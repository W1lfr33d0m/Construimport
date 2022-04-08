from cProfile import label
from email import message
from hashlib import new
from importlib import import_module
from msilib.schema import Verb
from multiprocessing.sharedctypes import Value
from tabnanny import verbose
from tkinter import Widget
from urllib import request
from django.contrib import admin
#from django import forms
from django.shortcuts import render
from attr import attributes, field
from pydantic import Field
from .models import Solicitud, RegistroControlSolicitud, Solicitud_Producto
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
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from notifications.signals import notify
from django.forms import forms, formset_factory
from django.contrib import messages

# Register your models here.


class Solicitud_ProductoResource(resources.ModelResource):
    
    idproducto = fields.Field(
        column_name = 'idproducto',
        attribute = 'idproducto',
        widget = ManyToManyWidget(Solicitud_Producto, 'idproducto')
    )
    
    codmincex = fields.Field(
                             column_name= 'codmincex',
                             attribute= 'codmincex',
                             widget= ManyToManyWidget(Solicitud_Producto, 'codmincex')
                            )
    
#admin.site.register(Solicitud_ProductoResource)
    
class Solicitud_ProductoInlineAdmin(admin.TabularInline):
    resource_class = Solicitud_ProductoResource
    model = Solicitud_Producto
    fk_name = 'numsolicitud'
    extra = 1
    fields = ('idproducto', 'cantidad', 'codmincex')
    Autocomplete_fields = ['productos', ]
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_ProductoInlineAdmin, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'idproducto' or db_field.name == 'codmincex':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield
    
    
    

class SolicitudResource(resources.ModelResource):
    
    numcontratocliente = fields.Field(
        column_name= 'numcontratocliente',
        attribute= 'numcontratocliente',
        widget= ForeignKeyWidget(Cliente, 'nomcliente')
    )
    
    codmincex = fields.Field(
        column_name= 'codmincex',
        attribute= 'codmincex',
        widget= ForeignKeyWidget(Proveedor, 'nomproveedor')
    )
    
    idespecialista = fields.Field(
       column_name= 'idespecialista',
       attribute= 'idespecialista',
       widget= ForeignKeyWidget(EspecialistaCOMEX, 'nombre')
    )
   
    
    productos = fields.Field(
        column_name='productos',
        attribute='productos',
        widget = ManyToManyWidget(Solicitud_Producto, 'idproducto', 'cantidad')
    )
    
    
    
    class Meta:
        model = Solicitud
        skip_unchanged = True
        report_skipped = False
        import_id_fields = (
                            'numcontratocliente', 
                            'codmincex', 
                            'productos'
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
                  'productos'
                  'idespecialista'
                  )
    

@admin.register(Solicitud)
class SolicitudAdmin(ImportExportModelAdmin):
    resource_class = SolicitudResource
    #productos_display = Solicitud_ProductoInlineAdmin.productos_display
    
    inlines = (Solicitud_ProductoInlineAdmin,)
    list_display = (
                   'numsolicitud', 
                   'numcontratocliente', 
                   'fechasol', 
                   'estado',
                   'valor_estimado',
                   'edit_link'
                   )
    
    filter_horizontal = ('productos', )    
        
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['numcontratocliente', 'estado', 'productos']
        #form.base_fields['fechasol' ].readonly = True
        form.base_fields['numcontratocliente'].widget.can_add_related = False
        form.base_fields['numcontratocliente'].widget.can_delete_related = False
        #form.base_fields['productos'].widget.can_add_related = False
        #form.base_fields['productos'].widget.can_add_related = False
        return form
    
    
    def save(self, request, obj=None):
        messages.success(request, "La Solicitud se agregó correctamente")
        return super().save(self, request)
    
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
        
    
@admin.register(RegistroControlSolicitud)
class RegistroControlSolicitudAdmin(admin.ModelAdmin):
    #list_display = ('numsolicitud', 'numcontratocliente','fechasol', 'idproducto', 'cantidad','codmincex', 'estado') 

    class Meta:
        model = RegistroControlSolicitud
        skip_unchanged = True
        report_skipped = False
        
    