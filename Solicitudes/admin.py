from argparse import Action
from cProfile import label
from sre_constants import SUCCESS
from types import new_class
from django.core.mail import send_mail
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
from django.dispatch import receiver
#from django import forms
from django.shortcuts import render
from numpy import character
from requests import post
from attr import attributes, field
from pydantic import Field
from .models import Solicitud, Solicitud_Equipo_Proveedor,  Solicitud_PPA_Proveedor, Solicitud_Neumatico_Proveedor, Solicitud_Bateria_Proveedor, Solicitud_Equipo, Solicitud_Equipo_Proxy, Solicitud_PPA, Solicitud_PPA_Proxy, Solicitud_Neumatico, Solicitud_Neumatico_Proxy,Solicitud_Bateria, Solicitud_Bateria_Proxy
from django.views.generic.base import TemplateView
from Nomencladores.models import Producto, Cliente, Proveedor, Pais, Equipo, PPA, Neumatico, Bateria
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
from django.utils.translation import gettext as _
from COMEX.models import Oferta_Equipo, Oferta_Equipo_Proxy
from django.http import HttpRequest, HttpResponse
from COMEX.admin import *
from .views import *
# Register your models here.

class SolicitudResource(resources.ModelResource):
    
    numcontratocliente = fields.Field(
        column_name= 'numcontratocliente',
        attribute= 'numcontratocliente',
        widget= ForeignKeyWidget(Cliente, 'nomcliente')
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
                  
                  )

"""
Clases de Equipo
    
"""
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
    
    def formfield_for_manytomany(self, db_field, request: HttpRequest, **kwargs):
        if db_field.name == 'codmincex':
            sei = self.fields['idproducto']
            kwargs['queryset'] = Solicitud_Equipo_Proveedor.objects.filter(request)
        return super().formfield_for_manytomany(db_field, request, **kwargs)
      
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
    
    def get_marca(self, obj):
        return obj.equipo.all().values_list('marca', flat=True)
    
@admin.register(Solicitud_Equipo)
class Solicitud_EquipoAdmin(ImportExportModelAdmin):
    add_form_template =  "solicitud_equipo_form.html"
    #resource_class = SolicitudResource
    #productos_display = Solicitud_ProductoInlineAdmin.productos_display
    inlines = (Solicitud_EquipoInline, Solicitud_Equipo_ProveedorInline)
    #readonly_fields = ('numsolicitud')
    
    def get_context_data(self, **kwargs):
        return super().get_context_data(**kwargs)
    
    fieldsets = (
        (None, {
            "fields": (('numcontratocliente'), 'observaciones', 'valor_estimado'),
        }),
        
     )
    
    list_display = (
                   'numsolicitud', 
                   'numcontratocliente', 
                   'fechasol', 
                   'estado',
                   'valor_estimado',
                   'edit_link'
                   )
    
    
    
    @admin.action(description='Generar archivo PDF')
    def generatePDF(modeladmin, request, queryset):
        url ='Solicitudes/templates/?pks=' + ','.join(str([q.pk for q in queryset]))
       
    actions = ['generatePDF']
    
    def get_fields(self, request, obj=None):
        if request.user.groups.filter(name = 'Marketing').exists():
            return ['numcontratocliente', 'observaciones', 'valor_estimado']
        elif request.user.groups.filter(name = 'Director_Desarrollo').exists():
            return ['estado', 'especialista']
        return super().get_fields(request, obj)
    
    def get_form(self, request:HttpRequest, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ('numsolicitud', 'numcontratocliente', 'estado')
        #form.base_fields['fechasol' ].readonly = True
        if request.user.groups.filter(name = 'Marketing').exists():
            form.base_fields['numcontratocliente'].widget.can_add_related = False
            form.base_fields['numcontratocliente'].widget.can_delete_related = False
            form.base_fields['numcontratocliente'].widget.can_change_related = False
       # elif request.user.groups.filter(name = 'Director_Desarrollo').exists():
        #    form.base_fields['especialista'].widget.can_delete_related = False
        return form
    
    def get_proveedores(self, obj):
       return obj.proveedores.all().values_list('codmincex', flat=True)
                
    def get_equipos(self, obj):
       return obj.equipo.all().values_list('idproducto', flat=True)
    
    def get_cantidad(self, obj, idproducto):
       if obj.equipos_set.filter(idproducto).exists():
           return obj.cantidad
    
    def response_add(self, request, obj, post_url_continue=None):
        msg = "Solicitud agregada correctamente"
        self.message_user(request, msg, level=messages.SUCCESS)
        return self.response_post_save_add(request, obj)
    
    def response_change(self, request:HttpRequest, obj, post_url_continue=None):
        print(Solicitud_EquipoInline.get_marca(self, obj))
        if request.user.groups.filter(name='Director_Desarrollo').exists() and obj.estado == 'Aprobada':
            for p in obj.proveedores.all().values_list('codmincex', flat=True):
                print(p)
                oferta_equipo = Oferta_Equipo.objects.create(solicitud_id = obj.numsolicitud, 
                                                             proveedor_id = p, 
                                                             especialista = obj.especialista, 
                                                             valor_estimado = obj.valor_estimado
                                                             )
                print(obj.equipo.all())
                #for proxy in Solicitud_Equipo_Proxy.objects.filter(numsolicitud=obj.numsolicitud):
                #   print(proxy.cantidad)
                #    oferta_equipo_proxy = oferta_equipo.equipos.create(proxy)
                    #oferta_equipo_proxy.solicitud = proxy.numsolicitud
                    #oferta_equipo_proxy.equipo = proxy.idproducto
                    #oferta_equipo_proxy.cantidad = proxy.cantidad
                    #oferta_equipo.equipos.add(oferta_equipo_proxy)                
        #msg1 = "Tiene nuevas solicitudes de Ofertas"
        #receiver = request.user.objects.filter(name = str(obj.especialista))
        #self.message_user(receiver, msg1, level=messages.INFO)
        msg2 = "Solicitud modificada correctamente"
        self.message_user(request, msg2, level=messages.SUCCESS)
        return self.response_post_save_change(request, obj)
    
    #def response_post_save_add(self, request, obj=None):
        #if request.user.groups.filter(name='Marketing').exists():
           #send_mail(
            #       'Nueva solicitud',
            #       'Tiene solicitudes pendientes a aprobar',
           #       'wilferreira3@nauta.cu',
            #       ['wilfreferreira3@gmail.com'],
            #       fail_silently=False,
                    #)
        #return super().response_post_save_add(request, obj)
        
    def save(self, request:HttpResponse, obj=None):
        
        return super(Solicitud_Equipo, self).save(request, obj)
       
    def get_inline_formsets(self, request, formsets= None, inline_instances = None, obj=None):
        return super().get_inline_formsets(request, formsets, inline_instances, obj)
    
    
    def edit_link(self,obj):
        return format_html(u'<a href="/%s/%s/%s/change/">Detalles</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numsolicitud))
    edit_link.allow_tags = True
    edit_link.short_description = "Detalles"

"""
Clases de Piezas
    
"""
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
            return ['numcontratocliente', 'observaciones', 'valor_estimado']
        elif request.user.groups.filter(name = 'DirectorDesarrollo').exists():
            return ['estado', 'especialista']
        return super().get_fields(request, obj)
            
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['numcontratocliente', 'estado']
        #form.base_fields['fechasol' ].readonly = True
        if request.user.groups.filter(name = 'Marketing').exists():
            form.base_fields['numcontratocliente'].widget.can_add_related = False
            form.base_fields['numcontratocliente'].widget.can_delete_related = False
            form.base_fields['numcontratocliente'].widget.can_change_related = False
        
        return form
    
    def get_proveedores(self, obj):
           return obj.proveedores.all().values_list('codmincex', flat=True)
                
    def get_piezas(self, obj):
       return obj.equipo.all().values_list('idproducto', flat=True)
    
    def get_cantidad(self, obj, idproducto):
        if obj.idproducto == idproducto:
            return obj.cantidad
    
    def response_add(self, request, obj, post_url_continue=None):
        msg = "Solicitud agregada correctamente"
        self.message_user(request, msg, level=messages.SUCCESS)
        return self.response_post_save_add(request, obj)
    
    def response_change(self, request:HttpRequest, obj, post_url_continue=None):
        print(Solicitud_EquipoInline.get_marca(self, obj))
        if request.user.groups.filter(name='Director_Desarrollo').exists() and obj.estado == 'Aprobada':
            for p in obj.proveedores.all().values_list('codmincex', flat=True):
                print(p)
                oferta_ppa = Oferta_PPA()
                oferta_ppa.solicitud_id = obj.numsolicitud
                oferta_ppa.proveedor_id = p
                oferta_ppa.especialista = obj.especialista
                oferta_ppa.valor_estimado = obj.valor_estimado
                #oferta_equipo.save()
                for ppa in obj.ppa.all().values_list('codmincex', flat=True):
                   print(ppa.numsolicitud)
                   oferta_ppa_proxy = Oferta_PPA_Proxy()
                   oferta_ppa_proxy.solicitud_id = str(ppa.numsolicitud)
                   oferta_ppa_proxy.equipo = ppa
                   oferta_ppa_proxy.cantidad = ppa.cantidad
                   oferta_ppa_proxy.save        
                #super(Oferta_Equipo, self).response_post_save_add(request,obj)
        #msg1 = "Tiene nuevas solicitudes de Ofertas"
        #receiver = request.user.objects.filter(name = str(obj.especialista))
        #self.message_user(receiver, msg1, level=messages.INFO)
        msg2 = "Solicitud modificada correctamente"
        self.message_user(request, msg2, level=messages.SUCCESS)
        return self.response_post_save_change(request, obj)
    
    #def response_post_save_add(self, request, obj=None):
    #    if request.user.groups.filter(name='Marketing').exists():
           #send_mail(
            #       'Nueva solicitud',
            #       'Tiene solicitudes pendientes a aprobar',
            #       'wilferreira3@nauta.cu',
              #     ['informatico@construimport.cu'],
              #     fail_silently=False,
              #      )
        #return super().response_post_save_add(request, obj)
        
    def save(self, request:HttpResponse, obj=None):
        
        return super(Solicitud_Equipo, self).save(request, obj)
       
    def get_inline_formsets(self, request, formsets= None, inline_instances = None, obj=None):
        return super().get_inline_formsets(request, formsets, inline_instances, obj)
    
    
    def edit_link(self,obj):
        return format_html(u'<a href="/%s/%s/%s/change/">Detalles</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numsolicitud))
    edit_link.allow_tags = True
    edit_link.short_description = "Detalles"

"""
Clases de Neumaticos
    
"""
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
    
class Solicitud_NeumaticoInline(admin.StackedInline):
      
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
           return ['numcontratocliente', 'observaciones', 'valor_estimado']
        elif request.user.groups.filter(name = 'DirectorDesarrollo').exists():
            return ['estado',]
        return super().get_fields(request, obj)
    
    def form_change(self, request, obj=None):
        if request.user.groups.filter(name = 'DirectorDesarrollo').exists:
            return ['estado', ]
        
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['numcontratocliente', 'estado']
        #form.base_fields['fechasol' ].readonly = True
        if request.user.groups.filter(name = 'Marketing').exists():
            form.base_fields['numcontratocliente'].widget.can_add_related = False
            form.base_fields['numcontratocliente'].widget.can_delete_related = False
            form.base_fields['numcontratocliente'].widget.can_change_related = False
        return form
    
    def response_add(self, request, obj, post_url_continue=None):
        msg = "Solicitud agregada correctamente"
        self.message_user(request, msg, level=messages.SUCCESS)
        return self.response_post_save_add(request, obj)
    
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

"""

Clases de Baterias
    
"""
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
            return ['numcontratocliente', 'observaciones', 'valor_estimado']
        elif request.user.groups.filter(name = 'DirectorDesarrollo').exists():
            return ['estado',]
        return super().get_fields(request, obj)
    
    def form_change(self, request, obj=None):
        if request.user.groups.filter(name = 'DirectorDesarrollo').exists:
            return ['estado',]
        
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['numcontratocliente', 'estado']
        #form.base_fields['fechasol' ].readonly = True
        if request.user.groups.filter(name = 'Marketing').exists():
            form.base_fields['numcontratocliente'].widget.can_add_related = False
            form.base_fields['numcontratocliente'].widget.can_delete_related = False
            form.base_fields['numcontratocliente'].widget.can_change_related = False
        return form
    
    def response_add(self, request, obj, post_url_continue=None):
        msg = "Solicitud agregada correctamente"
        self.message_user(request, msg, level=messages.SUCCESS)
        return self.response_post_save_add(request, obj)
    
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
        return format_html(u'<a href="/%s/%s/%s/change/">Detalles</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numsolicitud))
    edit_link.allow_tags = True
    edit_link.short_description = "Detalles"
    
    def pending_alert(self, request):
        for sol in self:
            if sol.get_estado == 'Pendiente' and request.user.username == 'director_desarrollo':
                messages.info(request, f"La solicitud",sol.numsolicitud,"está pendiente a revisar")