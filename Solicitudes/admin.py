from cProfile import label
from email import message
from importlib import import_module
from msilib.schema import Verb
from multiprocessing.sharedctypes import Value
from urllib import request
from django.contrib import admin
#from django import forms
from django.shortcuts import render
from .models import Solicitud, RegistroControlSolicitud
from django.views.generic.base import TemplateView
from Nomencladores.models import Producto, Cliente, Proveedor, Pais
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
    #change_list_template = 'smuggler/change_list.html'
    readonly_fields = ('numsolicitud', 'fechasol')
    list_display = ('numsolicitud', 'numcontratocliente','fechasol', 'idproducto', 'cantidad','numcontratoproveedor', 'estado', 'edit_link')
    
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, change, **kwargs)
        if 'Solicitud' in request.session:
            form.base_fields['numcontratocliente'].widget.can_add_related = False
            form.base_fields['numcontratocliente'].widget.can_delete_related = False
            form.base_fields['idproducto'].widget.can_add_related = False
            form.base_fields['idproducto'].widget.can_delete_related = False
            form.base_fields['numcontratoproveedor'].widget.can_add_related = False
            form.base_fields['numcontratoproveedor'].widget.can_delete_related = False
        fields = ['numsolicitud', 'fechasol', 'numcontratocliente', 'idproducto', 'cantidad','numcontratoproveedor']
        return form
    
    #def get_fields(self, request, obj=None):
    #    fields = ['numsolicitud', 'fechasol', 'numcontratocliente', 'idproducto', 'cantidad','numcontratoproveedor']
     #   if request.user.username == 'director_desarrollo':
     #      return ('estado', )
        
    
    def edit_link(self,obj):
        return format_html(u'<a href="/%s/%s/%s/change/">Editar</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numsolicitud))
    edit_link.allow_tags = True
    edit_link.short_description = "Editar"
    
    #def save(sender, request, **kwargs):
    #    sender = User.objects.get(username = request.user.username)
    #    recipient = User.objects.get(id = 'director_desarrollo')
    #    message = "Tiene solicitudes pendientes a verificar"
    #    notify.send(actor=sender, recipient=recipient, verb='Message', description=message)
        
    #post_save.connect(save, sender=User)
    
@admin.register(RegistroControlSolicitud)
class RegistroControlSolicitudAdmin(admin.ModelAdmin):
    list_display = ('numsolicitud', 'numcontratocliente','fechasol', 'idproducto', 'cantidad','numcontratoproveedor', 'estado') 

    class Meta:
        model = RegistroControlSolicitud
        skip_unchanged = True
        report_skipped = False
    