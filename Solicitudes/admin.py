from cProfile import label
from email import message
from hashlib import new
from importlib import import_module
from msilib.schema import Verb
from multiprocessing.sharedctypes import Value
import re
from tabnanny import verbose
from tkinter import Widget
from unicodedata import name
from urllib import request
from django.contrib import admin
#from django import forms
from django.shortcuts import render
from attr import attributes, field
from pydantic import Field
from .models import Solicitud, Solicitud_Equipo_Proveedor,  Solicitud_PPA_Proveedor, Solicitud_Neumatico_Proveedor, Solicitud_Bateria_Proveedor, Solicitud_Equipo, Solicitud_Equipo_Proxy, Solicitud_PPA, Solicitud_PPA_Proxy, Solicitud_Neumatico, Solicitud_Neumatico_Proxy,Solicitud_Bateria, Solicitud_Bateria_Proxy
from django.views.generic.base import TemplateView
from Nomencladores.models import Producto, Cliente, Proveedor, Pais
from COMEX.models import EspecialistaCOMEX
from django.contrib.auth.models import Group, User, UserManager, GroupManager, PermissionsMixin
from django.core.exceptions import ValidationError, PermissionDenied
from ast import Raise
from django.forms import forms, formset_factory
from django import urls
from django import http
from django.utils.html import format_html
from django.urls import reverse, URLPattern, URLResolver, get_urlconf, set_urlconf
from import_export import resources, widgets, fields
from import_export.admin import ImportExportModelAdmin
from import_export.widgets import ForeignKeyWidget, ManyToManyWidget
from django.db.models.signals import post_save
from notifications.signals import notify
from django.forms import forms, formset_factory
from django.contrib import messages
from django.utils.translation import ngettext

# Register your models here.



class Solicitud_Equipo_ProveedorInline(admin.StackedInline):
    model =  Solicitud_Equipo_Proveedor
    #fk_name = 'numsolicitud'
    extra = 1
    fields = ('codmincex',)
    verbose = 'Proveedor'
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_Equipo_ProveedorInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        formfield.widget.can_add_related = False
        formfield.widget.can_change_related = False
        return formfield
    
class Solicitud_PPA_ProveedorInline(admin.StackedInline):
    model =  Solicitud_PPA_Proveedor
    fk_name = 'numsolicitud'
    extra = 1
    fields = ('codmincex',)
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_PPA_ProveedorInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        formfield.widget.can_add_related = False
        formfield.widget.can_change_related = False
        return formfield

class Solicitud_Neumatico_ProveedorInline(admin.StackedInline):
    model =  Solicitud_Neumatico_Proveedor
    fk_name = 'numsolicitud'
    extra = 1
    fields = ('codmincex',)
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_Neumatico_ProveedorInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        formfield.widget.can_add_related = False
        formfield.widget.can_change_related = False
        return formfield

class Solicitud_Bateria_ProveedorInline(admin.StackedInline):
    model =  Solicitud_Bateria_Proveedor
    fk_name = 'numsolicitud'
    extra = 1
    fields = ('codmincex',)
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_Bateria_ProveedorInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        formfield.widget.can_add_related = False
        formfield.widget.can_change_related = False
        return formfield


class SolicitudResource(resources.ModelResource):
    
    numcontratocliente = fields.Field(
        column_name= 'numcontratocliente',
        attribute= 'numcontratocliente',
        widget= ForeignKeyWidget(Cliente, 'nomcliente')
    )
    
    idespecialista = fields.Field(
       column_name= 'idespecialista',
       attribute= 'idespecialista',
       widget= ForeignKeyWidget(EspecialistaCOMEX, 'nombre')
    )
    
    class Meta:
        model = Solicitud
        skip_unchanged = True
        report_skipped = False
        import_id_fields = (
                            'numcontratocliente', 
                            'codmincex', 
                            
                            )
        readonly_fields = (
                          'numsolicitud', 
                          'fechasol'
                          )
        fields = (
                  'numcontratocliente', 
                  'cantidad',
                  'codmincex', 
                  'valor_estimado',
                  'estado', 
                  
                  'idespecialista'
                  )
    
class Solicitud_EquipoInline(admin.StackedInline):
    #resource_class = Solicitud_ProductoResource
    model = Solicitud_Equipo_Proxy
    fk_name = 'numsolicitud'
    extra = 1
    max_num = 1
    #readonly_fields = ('item',)
    fields = ('idproducto', 'cantidad')
    #Autocomplete_fields = ['', ]
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_EquipoInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'idproducto':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield

class Solicitud_PPAInline(admin.StackedInline):
    #resource_class = Solicitud_ProductoResource
    model = Solicitud_PPA_Proxy
    fk_name = 'numsolicitud'
    extra = 1
    #readonly_fields = ('item',)
    fields = ('idproducto', 'cantidad')
    #Autocomplete_fields = ['productos', ]
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_PPAInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'idproducto' or db_field.name == 'proveedor':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield
    
class Solicitud_NeumaticoInline(admin.StackedInline):
    #resource_class = Solicitud_ProductoResource
    model = Solicitud_Neumatico_Proxy
    fk_name = 'numsolicitud'
    extra = 1
    #readonly_fields = ('item',)
    fields = ('idproducto', 'cantidad')
    #Autocomplete_fields = ['productos', ]
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_NeumaticoInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'idproducto' or db_field.name == 'proveedor':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield
    
class Solicitud_BateriaInline(admin.StackedInline):
    #resource_class = Solicitud_ProductoResource
    model = Solicitud_Bateria_Proxy
    fk_name = 'numsolicitud'
    extra = 1
    #readonly_fields = ('item',)
    fields = ('idproducto', 'cantidad')
    #Autocomplete_fields = ['productos', ]
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_BateriaInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'idproducto' or db_field.name == 'proveedor':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield

@admin.register(Solicitud_Equipo)
class Solicitud_EquipoAdmin(ImportExportModelAdmin):
    #resource_class = SolicitudResource
    #productos_display = Solicitud_ProductoInlineAdmin.productos_display
    
    inlines = ( Solicitud_Equipo_ProveedorInline, Solicitud_EquipoInline)
    list_display = (
                   'numsolicitud', 
                   'numcontratocliente', 
                   'fechasol', 
                   'estado',
                   'valor_estimado',
                   'edit_link'
                   )
    
    #filter_horizontal = ('productos', )    
        
    def get_fields(self, request, obj=None):
        if request.user.groups.filter(name = 'Marketing').exists():
            return ['fechasol', 'numcontratocliente', 'observaciones', 'valor_estimado']
        elif request.user.groups.filter(name = 'DirectorDesarrollo').exists():
            return ['estado', 'idespecialista']
        return super().get_fields(request, obj)
    
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['numcontratocliente', 'estado']
        #form.base_fields['fechasol' ].readonly = True
        if request.user.groups.filter(name = 'Marketing').exists():
            form.base_fields['numcontratocliente'].widget.can_add_related = False
            form.base_fields['numcontratocliente'].widget.can_delete_related = False
            form.base_fields['numcontratocliente'].widget.can_change_related = False
        elif request.user.groups.filter(name = 'DirectorDesarrollo').exists():
            form.base_fields['idespecialista'].widget.can_add_related = False
            form.base_fields['idespecialista'].widget.can_change_related = False
            form.base_fields['idespecialista'].widget.can_delete_related = False  
        return form
    
    
    def save_model(self, request, obj=None):
        messages.success(request, 'Solicitud añadida correctamente')
        return super(Solicitud_Equipo, self).save(request, obj)
    
    def post_save(self, request, queryset, obj=None):
        s = queryset.get(estado = 'Pendiente')
        if request.user.groups.filter(name = 'Marketing').exists():
            self.message_user(request, ngettext(
                '%d Se añadieron nuevas solicitudes.', s,
            ) %s, messages.SUCCESS)
        
    def get_inline_formsets(self, request, formsets= None, inline_instances = None, obj=None):
        return super().get_inline_formsets(request, formsets, inline_instances, obj)
        
    def edit_link(self,obj):
        return format_html(u'<a href="/%s/%s/%s/change/">Editar</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numsolicitud))
    edit_link.allow_tags = True
    edit_link.short_description = "Editar"
    
        
@admin.register(Solicitud_PPA)
class Solicitud_PPAAdmin(ImportExportModelAdmin):
    resource_class = SolicitudResource
    #productos_display = Solicitud_ProductoInlineAdmin.productos_display
    
    inlines = ( Solicitud_PPA_ProveedorInline, Solicitud_PPAInline)
    list_display = (
                   'numsolicitud', 
                   'numcontratocliente', 
                   'fechasol', 
                   'estado',
                   'valor_estimado',
                   'edit_link'
                   )
    
    #filter_horizontal = ('productos', )    
        
    def get_fields(self, request, obj=None):
        if request.user.groups.filter(name = 'Marketing').exists():
            return ['fechasol', 'numcontratocliente', 'observaciones', 'valor_estimado']
        elif request.user.groups.filter(name = 'DirectorDesarrollo').exists():
            return ['estado', 'idespecialista']
        return super().get_fields(request, obj)
            
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['numcontratocliente', 'estado']
        #form.base_fields['fechasol' ].readonly = True
        if request.user.groups.filter(name = 'Marketing').exists():
            form.base_fields['numcontratocliente'].widget.can_add_related = False
            form.base_fields['numcontratocliente'].widget.can_delete_related = False
            form.base_fields['numcontratocliente'].widget.can_change_related = False
        elif request.user.groups.filter(name = 'DirectorDesarrollo').exists():
            form.base_fields['idespecialista'].widget.can_add_related = False
            form.base_fields['idespecialista'].widget.can_change_related = False
            form.base_fields['idespecialista'].widget.can_delete_related = False  
        return form
    
    def post_save(self, request, queryset):
        s = queryset.get(estado = 'Pendiente')
        if request.user.username == 'director_desarrollo':
            self.message_user(request, ngettext(
                '%d Se añadieron nuevas solicitudes.', s,
            ) %s, messages.SUCCESS)
        
    def get_inline_formsets(self, request, formsets= None, inline_instances = None, obj=None):
        return super().get_inline_formsets(request, formsets, inline_instances, obj)
    
                
    #jazzmin_section_order = ('solicitud', 'Productos')
    
    def edit_link(self,obj):
        return format_html(u'<a href="/%s/%s/%s/change/">Editar</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numsolicitud))
    edit_link.allow_tags = True
    edit_link.short_description = "Editar"
    
    def pending_alert(self, request):
        for sol in self:
            if sol.get_estado == 'Pendiente' and request.user.username == 'director_desarrollo':
                messages.info(request, f"La solicitud",sol.numsolicitud,"está pendiente a revisar")
        
@admin.register(Solicitud_Neumatico)
class Solicitud_NeumaticoAdmin(ImportExportModelAdmin):
    #resource_class = SolicitudResource
    #productos_display = Solicitud_ProductoInlineAdmin.productos_display
    
    inlines = ( Solicitud_Neumatico_ProveedorInline, Solicitud_NeumaticoInline)
    list_display = (
                   'numsolicitud', 
                   'numcontratocliente', 
                   'fechasol', 
                   'estado',
                   'valor_estimado',
                   'edit_link'
                   )
    
    #filter_horizontal = ('productos', )    
    
    def get_fields(self, request, obj=None):
        if request.user.groups.filter(name = 'Marketing').exists():
           return ['fechasol', 'numcontratocliente', 'observaciones', 'valor_estimado']
        elif request.user.groups.filter(name = 'DirectorDesarrollo').exists():
            return ['estado', 'idespecialista']
        return super().get_fields(request, obj)
    
    def form_change(self, request, obj=None):
        if request.user.groups.filter(name = 'DirectorDesarrollo').exists:
            return ['estado', 'idespecialista']
        
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['numcontratocliente', 'estado']
        #form.base_fields['fechasol' ].readonly = True
        if request.user.groups.filter(name = 'Marketing').exists():
            form.base_fields['numcontratocliente'].widget.can_add_related = False
            form.base_fields['numcontratocliente'].widget.can_delete_related = False
            form.base_fields['numcontratocliente'].widget.can_change_related = False
        elif request.user.groups.filter(name = 'DirectorDesarrollo').exists():
            form.base_fields['idespecialista'].widget.can_add_related = False
            form.base_fields['idespecialista'].widget.can_change_related = False
            form.base_fields['idespecialista'].widget.can_delete_related = False  
        return form
    
    
    def save(self, request, queryset):
        s = queryset.get(estado = 'Pendiente')
        if request.user.groups.filter(name = 'Marketing').exists():
           self.message_user(request, ngettext(
            '%d Se añadieron nuevas solicitudes.', s,
            ) %s, messages.SUCCESS)
        
    def get_inline_formsets(self, request, formsets= None, inline_instances = None, obj=None):
        return super().get_inline_formsets(request, formsets, inline_instances, obj)
    
                
    #jazzmin_section_order = ('solicitud', 'Productos')
    
    def edit_link(self,obj):
        return format_html(u'<a href="/%s/%s/%s/change/">Editar</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numsolicitud))
    edit_link.allow_tags = True
    edit_link.short_description = "Editar"
    
    def pending_alert(self, request):
        for sol in self:
            if sol.get_estado == 'Pendiente' and request.user.username == 'director_desarrollo':
                messages.info(request, f"La solicitud",sol.numsolicitud,"está pendiente a revisar")
        
@admin.register(Solicitud_Bateria)
class Solicitud_BateriaAdmin(ImportExportModelAdmin):
    #resource_class = SolicitudResource
    #productos_display = Solicitud_ProductoInlineAdmin.productos_display
    
    inlines = ( Solicitud_Bateria_ProveedorInline, Solicitud_BateriaInline)
    list_display = (
                   'numsolicitud', 
                   'numcontratocliente', 
                   'fechasol', 
                   'estado',
                   'valor_estimado',
                   'edit_link'
                   )
    
    #filter_horizontal = ('productos', )    
        
    def get_fields(self, request, obj=None):
        if request.user.groups.filter(name = 'Marketing').exists():
            return ['fechasol', 'numcontratocliente', 'observaciones', 'valor_estimado']
        elif request.user.groups.filter(name = 'DirectorDesarrollo').exists():
            return ['estado', 'idespecialista']
        return super().get_fields(request, obj)
    
    def form_change(self, request, obj=None):
        if request.user.groups.filter(name = 'DirectorDesarrollo').exists:
            return ['estado', 'idespecialista']
        
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['numcontratocliente', 'estado']
        #form.base_fields['fechasol' ].readonly = True
        if request.user.groups.filter(name = 'Marketing').exists():
            form.base_fields['numcontratocliente'].widget.can_add_related = False
            form.base_fields['numcontratocliente'].widget.can_delete_related = False
            form.base_fields['numcontratocliente'].widget.can_change_related = False
        elif request.user.groups.filter(name = 'DirectorDesarrollo').exists():
            form.base_fields['idespecialista'].widget.can_add_related = False
            form.base_fields['idespecialista'].widget.can_change_related = False
            form.base_fields['idespecialista'].widget.can_delete_related = False  
        return form
    
    def post_save(self, request, queryset):
        s = queryset.get(estado = 'Pendiente')
        if request.user.username == 'director_desarrollo':
            self.message_user(request, ngettext(
                '%d Se añadieron nuevas solicitudes.', s,
            ) %s, messages.SUCCESS)
        
    def get_inline_formsets(self, request, formsets= None, inline_instances = None, obj=None):
        return super().get_inline_formsets(request, formsets, inline_instances, obj)
    
                
    #jazzmin_section_order = ('solicitud', 'Productos')
    
    def edit_link(self,obj):
        return format_html(u'<a href="/%s/%s/%s/change/">Editar</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numsolicitud))
    edit_link.allow_tags = True
    edit_link.short_description = "Editar"
    
    def pending_alert(self, request):
        for sol in self:
            if sol.get_estado == 'Pendiente' and request.user.username == 'director_desarrollo':
                messages.info(request, f"La solicitud",sol.numsolicitud,"está pendiente a revisar")