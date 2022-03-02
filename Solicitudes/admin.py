from cProfile import label
from importlib import import_module
from multiprocessing.sharedctypes import Value
from django.contrib import admin
#from django import forms
from django.shortcuts import render
from .models import Solicitud
from django.views.generic.base import TemplateView
from Nomencladores.models import Producto, Cliente, Proveedor, Pais
from django.contrib.auth.models import Group, User, UserManager, GroupManager, PermissionsMixin
from django.core.exceptions import ValidationError, PermissionDenied
from ast import Raise
from django.forms import forms
from django import urls
from django import http
from django.utils.html import format_html
from django.urls import reverse, URLPattern, URLResolver, get_urlconf, set_urlconf
from import_export import resources, widgets, fields
from import_export.admin import ImportExportModelAdmin
from import_export.widgets import ForeignKeyWidget
# Register your models here.

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
    
    idproducto = fields.Field(
        column_name= 'idproducto',
        attribute= 'idproducto',
        widget= ForeignKeyWidget(Producto, 'idproducto')
    )
    
    class Meta:
        model = Solicitud
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('numcontratocliente', 'numcontratoproveedor', 'idproducto')
        fields = ('numsolicitud', 'numcontratocliente', 'fechasol', 'idproducto', 'cantidad','numcontratoproveedor', 'estado')
    

@admin.register(Solicitud)
class SolicitudAdmin(ImportExportModelAdmin):
    resource_class = SolicitudResource
    readonly_fields = ('numsolicitud', 'fechasol')
    #change_list_template = 'smuggler/change_list.html'
    list_display = ('numsolicitud', 'numcontratocliente','fechasol', 'idproducto', 'cantidad','numcontratoproveedor', 'estado', 'edit_link')
    
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, change, **kwargs)
        return form
    
    def get_fields(self, request, obj=None):
        fields = ['numsolicitud', 'fechasol', 'numcontratocliente',  'idproducto', 'cantidad','numcontratoproveedor']
        if request.user.get_username() == 'director_desarrollo':
           return ('estado', )
        return fields
        
    #def has_change_permission(self, request, obj=None):
      #  estado = self.fields('estado')
       # if estado == 'Aprobada' or estado == 'Denegada':
        #    request.user.has_change_permission = False
    
    #def cancel_link(self, obj):
    #    info = obj._meta.app_label, obj._meta.model_name
    #    url = reverse('admin:%s_%s_delete' % info, args=(obj.numsolicitud,))
    #    return format_html('<a href="%s">Cancelar</a>'  % url)
    #cancel_link.allow_tags = True
    #cancel_link.short_description = 'Cancelar'

    def edit_link(self,obj):
        return format_html(u'<a href="/%s/%s/%s/change/">Editar</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numsolicitud))
    edit_link.allow_tags = True
    edit_link.short_description = "Editar"
    