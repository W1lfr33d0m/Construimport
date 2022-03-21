from cProfile import label
from email import message
from hashlib import new
from importlib import import_module
from msilib.schema import Verb
from multiprocessing.sharedctypes import Value
from urllib import request
from django.contrib import admin
#from django import forms
from django.shortcuts import render

from attr import field
from .models import Solicitud, RegistroControlSolicitud, Solicitud_Producto
from django.views.generic.base import TemplateView
from Nomencladores.models import EspecialistaCOMEX, Producto, Cliente, Proveedor, Pais
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
from import_export.widgets import ForeignKeyWidget
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from notifications.signals import notify
from django.forms import forms, formset_factory
from django.contrib import messages


# Register your models here.

class Solicitud_ProductoInLine(admin.TabularInline):
    fields = ['idproducto', ]
    model = Solicitud_Producto
    extra = 1

admin.site.register(Solicitud_Producto)

class SolicitudResource(resources.ModelResource):
    
    numcontratocliente = fields.Field(
        column_name= 'numcontratocliente',
        attribute= 'numcontratocliente',
        widget= ForeignKeyWidget(Cliente, 'nomcliente')
    )
    
    numcontratoproveedor = fields.Field(
        column_name= 'numcontratoproveedor',
        attribute= 'numcontratoproveedor',
        widget= ForeignKeyWidget(Proveedor, 'nomproveedor')
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
        import_id_fields = ('numcontratocliente', 'numcontratoproveedor', 'idproducto')
        fields = ('numsolicitud', 'numcontratocliente', 'fechasol', 'cantidad','numcontratoproveedor', 'estado', 'idespecialista',)
    

@admin.register(Solicitud)
class SolicitudAdmin(ImportExportModelAdmin):
    resource_class = SolicitudResource
    inlines = [Solicitud_ProductoInLine, ]
    #change_list_template = 'smuggler/change_list.html'
    readonly_fields = ('numsolicitud', 'fechasol')
    list_display = ('numsolicitud', 'numcontratocliente','fechasol', 'cantidad','numcontratoproveedor', 'estado', 'idespecialista', 'edit_link')
    
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        form.base_fields['numcontratocliente'].widget.can_add_related = False
        form.base_fields['numcontratocliente'].widget.can_delete_related = False
        #form.base_fields['idproducto'].widget.can_add_related = False
        #form.base_fields['idproducto'].widget.can_delete_related = False
        form.base_fields['numcontratoproveedor'].widget.can_add_related = False
        form.base_fields['numcontratoproveedor'].widget.can_delete_related = False
        estado = getattr(self, 'estado', None)        
        if request.user.username == 'director_desarrollo':
            del form.base_fields['numsolicitud', 'numcontratocliente','fechasol', 'idproducto', 'cantidad','numcontratoproveedor',]
        #elif request.user.username == 'Marketing' :
           #readonly_fields = ('estado', )      
        return form
            
    def get_readonly_fields(self, request, obj=None):
        if obj:
            return ['url']
        else:
            return []
    
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
    list_display = ('numsolicitud', 'numcontratocliente','fechasol', 'idproducto', 'cantidad','numcontratoproveedor', 'estado') 

    class Meta:
        model = RegistroControlSolicitud
        skip_unchanged = True
        report_skipped = False
    