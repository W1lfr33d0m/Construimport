#from os import getgroups
from logging import warning
from unicodedata import name
from django.db import connection, reset_queries
#from celery import group
from fastapi import Query
from requests import request
import psycopg2
from colorama import Cursor
from django.contrib import admin
from django.shortcuts import render
#from .models import RegistroControlSolicitud
from django.utils.html import format_html
from django.views.generic.base import TemplateView
from django.views.generic.base import TemplateView
from import_export import resources, widgets, fields
from import_export.admin import ImportExportModelAdmin
from import_export.widgets import ForeignKeyWidget, Widget
from django.forms import ModelForm, forms, formset_factory
from django.contrib.auth.models import User, Group
from django.db.models import Q
from django.db import models
from django.db.models import Model
from .models import *
from django.contrib import messages
from django.http import HttpRequest

# Register your models here.

class Oferta_EquipoInlineResource(resources.ModelResource):
    solicitud = fields.Field(
        column_name= 'numsolicitud',
        attribute= 'solicitud',
        widget= ForeignKeyWidget(Oferta_Equipo_Proxy, 'numsolicitud')
    )
    
    class Meta:
        model = Solicitud
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('solicitud',) 

class Oferta_EquipoInline(admin.TabularInline):
    resource_class = Oferta_EquipoInlineResource
    model = Oferta_Equipo_Proxy
    fk_name = 'oferta'
    extra = 1
    max_num = 1
    #readonly_fields = ('item',)
    fields = ('equipo', 'cantidad', 'precio', 'importe')
    #Autocomplete_fields = ['', ]
        
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Oferta_EquipoInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'equipo':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield
    
    #def get_fields(self, request: HttpRequest, obj=None):
    #    if self.fields.solicitud:
    #        return ['equipo', 'cantidad', 'precio', 'importe']   
    #    return super().get_fields(request, obj)
      
    
@admin.register(Oferta_Equipo)
class Oferta_EquipoAdmin(admin.ModelAdmin):
    inlines = [Oferta_EquipoInline,]
    list_display = ('numero', 'solicitud', 'pais', 'proveedor', 'especialista', 'estado', 'edit_link')
        
    def get_fields(self, request, obj):
        if request.user.groups.filter(name = 'Especialista_COMEX_Equipo').exists() and obj:
            return ['fecha', 'proveedor', 'pais', 'validez', 'solicitud']
        elif request.user.groups.filter(name = 'Director_COMEX').exists():
            return ['estado', 'idespecialista']
        return super().get_fields(request, obj)
    
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['pais',]
        readonly_fields = ['proveedor', 'especialista', 'solicitud']
        #form.base_fields['fechasol' ].readonly = True
        if request.user.groups.filter(name = 'Especialista_COMEX_Equipo').exists() and obj:
            form.base_fields['pais'].widget.can_add_related = False
            form.base_fields['pais'].widget.can_delete_related = False
            form.base_fields['pais'].widget.can_change_related = False
            form.base_fields['proveedor'].disabled = True
            form.base_fields['especialista'].can_delete_related = False
            form.base_fields['especialista'].disabled = True
            form.base_fields['solicitud'].disabled = True
            form.base_fields['valor_estimado'].disabled = True
        return form
    
    def response_change(self, request, obj, post_url_continue=None):
        if request.method == 'POST':
            for i in obj.equipos.all():
                suma += i.importe
            obj.monto_total = suma
            if suma > obj.valor_estimado:
                raise warning('El monto total excede el valor estimado, debe modificar la oferta')
            elif i.importe != (i.cantidad * i.precio):
                raise ValidationError('El valor del importe no es correcto')
        msg = "Oferta modificada correctamente"
        self.message_user(request, msg, level=messages.SUCCESS)
        return self.response_post_save_change(request, obj)
    
    
    def edit_link(self,obj):
        return format_html(u'<a href="/admin/%s/%s/%s/change/">Editar</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numero))
    edit_link.allow_tags = True
    edit_link.short_description = "Editar"
    
    def get_fields(self, request: HttpRequest, obj=None):
        return super().get_fields(request, obj)
    
        """
        Oferta PPA
        
        """
class Oferta_PPAResource(resources.ModelResource):
    solicitud = fields.Field(
        column_name= 'numsolicitud',
        attribute= 'solicitud',
        widget= ForeignKeyWidget(Oferta_PPA_Proxy, 'numsolicitud')
    )
    
    class Meta:
        model = Solicitud
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('solicitud',) 

class Oferta_PPAInline(admin.TabularInline):
    resource_class = Oferta_PPAResource
    model = Oferta_PPA_Proxy
    fk_name = 'solicitud'
    extra = 1
    max_num = 1
    #readonly_fields = ('item',)
    fields = ('idproducto', 'cantidad', 'precio', 'importe')
    #Autocomplete_fields = ['', ]
        
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Oferta_EquipoInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'idproducto':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield
    
    #def get_fields(self, request: HttpRequest, obj=None):
    #    if self.fields.solicitud:
    #        return ['equipo', 'cantidad', 'precio', 'importe']   
    #    return super().get_fields(request, obj)
      
@admin.register(Oferta_PPA)
class Oferta_PPAAdmin(admin.ModelAdmin):
    inlines = [Oferta_PPAInline,]
    list_display = ('numero', 'solicitud', 'pais', 'proveedor', 'especialista', 'estado', 'edit_link')
        
    def get_fields(self, request, obj=None):
        if request.user.groups.filter(name = 'Especialista_COMEX_PPA').exists():
            return ['fecha', 'proveedor', 'pais', 'validez', 'solicitud']
        elif request.user.groups.filter(name = 'Director_COMEX').exists():
            return ['estado', 'idespecialista']
        return super().get_fields(request, obj)
    
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['pais',]
        readonly_fields = ['proveedor', 'especialista', 'solicitud']
        #form.base_fields['fechasol' ].readonly = True
        if request.user.groups.filter(name = 'Especialista_COMEX_PPA').exists():
            form.base_fields['pais'].widget.can_add_related = False
            form.base_fields['pais'].widget.can_delete_related = False
            form.base_fields['pais'].widget.can_change_related = False
            form.base_fields['proveedor'].disabled = True
            form.base_fields['especialista'].disabled = True
            form.base_fields['solicitud'].disabled = True
            form.base_fields['valor_estimado'].disabled = True
        return form
    
    def response_change(self, request, obj, post_url_continue=None):
        msg = "Oferta modificada correctamente"
        self.message_user(request, msg, level=messages.SUCCESS)
        return self.response_change(request, obj)
    
    
    def edit_link(self,obj):
        return format_html(u'<a href="/admin/%s/%s/%s/change/">Editar</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numero))
    edit_link.allow_tags = True
    edit_link.short_description = "Editar"
    
    def get_fields(self, request: HttpRequest, obj=None):
        return super().get_fields(request, obj)
    
"""
Oferta Neumaticos
        
"""
class Oferta_NeumaticoResource(resources.ModelResource):
    solicitud = fields.Field(
        column_name= 'numsolicitud',
        attribute= 'solicitud',
        widget= ForeignKeyWidget(Oferta_Neumatico_Proxy, 'numsolicitud')
    )
    
    class Meta:
        model = Solicitud
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('solicitud',) 

class Oferta_NeumaticoInline(admin.TabularInline):
    resource_class = Oferta_NeumaticoResource
    model = Oferta_Neumatico_Proxy
    fk_name = 'solicitud'
    extra = 1
    max_num = 1
    #readonly_fields = ('item',)
    fields = ('idproducto', 'cantidad', 'precio', 'importe')
    #Autocomplete_fields = ['', ]
        
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Oferta_NeumaticoInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'neumatico':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield
    
    #def get_fields(self, request: HttpRequest, obj=None):
    #    if self.fields.solicitud:
    #        return ['equipo', 'cantidad', 'precio', 'importe']   
    #    return super().get_fields(request, obj)
      
@admin.register(Oferta_Neumatico)
class Oferta_NeumaticoAdmin(admin.ModelAdmin):
    inlines = [Oferta_NeumaticoInline,]
    list_display = ('numero', 'solicitud', 'pais', 'proveedor', 'especialista', 'estado', 'edit_link')
        
    def get_fields(self, request, obj=None):
        if request.user.groups.filter(name = 'Especialista_COMEX_Neumatico').exists():
            return ['fecha', 'proveedor', 'pais', 'validez', 'solicitud']
        elif request.user.groups.filter(name = 'Director_COMEX').exists():
            return ['estado', 'idespecialista']
        return super().get_fields(request, obj)
    
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['pais',]
        readonly_fields = ['proveedor', 'especialista', 'solicitud']
        #form.base_fields['fechasol' ].readonly = True
        if request.user.groups.filter(name = 'Especialista_COMEX_Neumatico').exists():
            form.base_fields['pais'].widget.can_add_related = False
            form.base_fields['pais'].widget.can_delete_related = False
            form.base_fields['pais'].widget.can_change_related = False
            form.base_fields['proveedor'].disabled = True
            form.base_fields['especialista'].disabled = True
            form.base_fields['solicitud'].disabled = True
            form.base_fields['valor_estimado'].disabled = True
        return form
    
    def response_change(self, request, obj, post_url_continue=None):
        msg = "Oferta modificada correctamente"
        self.message_user(request, msg, level=messages.SUCCESS)
        return self.response_change(request, obj)
    
    
    def edit_link(self,obj):
        return format_html(u'<a href="/admin/%s/%s/%s/change/">Editar</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numero))
    edit_link.allow_tags = True
    edit_link.short_description = "Editar"
    
    def get_fields(self, request: HttpRequest, obj=None):
        return super().get_fields(request, obj)
      
    
"""
Oferta Baterias
        
"""
class Oferta_BateriaResource(resources.ModelResource):
    solicitud = fields.Field(
        column_name= 'numsolicitud',
        attribute= 'solicitud',
        widget= ForeignKeyWidget(Oferta_Bateria_Proxy, 'numsolicitud')
    )
    
    class Meta:
        model = Solicitud
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('solicitud',) 

class Oferta_BateriaInline(admin.TabularInline):
    resource_class = Oferta_BateriaResource
    model = Oferta_Bateria_Proxy
    fk_name = 'solicitud'
    extra = 1
    max_num = 1
    #readonly_fields = ('item',)
    fields = ('idproducto', 'cantidad', 'precio', 'importe')
    #Autocomplete_fields = ['', ]
        
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Oferta_BateriaInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'bateria':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield
    
    #def get_fields(self, request: HttpRequest, obj=None):
    #    if self.fields.solicitud:
    #        return ['equipo', 'cantidad', 'precio', 'importe']   
    #    return super().get_fields(request, obj)
      
@admin.register(Oferta_Bateria)
class Oferta_BateriAdmin(admin.ModelAdmin):
    inlines = [Oferta_BateriaInline,]
    list_display = ('numero', 'solicitud', 'pais', 'proveedor', 'especialista', 'estado', 'edit_link')
        
    def get_fields(self, request, obj=None):
        if request.user.groups.filter(name = 'Especialista_COMEX_Bateria').exists():
            return ['fecha', 'proveedor', 'pais', 'validez', 'solicitud']
        elif request.user.groups.filter(name = 'Director_COMEX').exists():
            return ['estado', 'idespecialista']
        return super().get_fields(request, obj)
    
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['pais',]
        readonly_fields = ['proveedor', 'especialista', 'solicitud']
        #form.base_fields['fechasol' ].readonly = True
        if request.user.groups.filter(name = 'Especialista_COMEX_Bateria').exists():
            form.base_fields['pais'].widget.can_add_related = False
            form.base_fields['pais'].widget.can_delete_related = False
            form.base_fields['pais'].widget.can_change_related = False
            form.base_fields['proveedor'].disabled = True
            form.base_fields['especialista'].disabled = True
            form.base_fields['solicitud'].disabled = True
            form.base_fields['valor_estimado'].disabled = True
        return form
    
    def response_change(self, request, obj, post_url_continue=None):
        msg = "Oferta modificada correctamente"
        self.message_user(request, msg, level=messages.SUCCESS)
        return self.response_change(request, obj)
    
    
    def edit_link(self,obj):
        return format_html(u'<a href="/admin/%s/%s/%s/change/">Editar</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numero))
    edit_link.allow_tags = True
    edit_link.short_description = "Editar"
    
    def get_fields(self, request: HttpRequest, obj=None):
        return super().get_fields(request, obj)
      