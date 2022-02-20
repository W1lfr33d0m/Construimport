from cProfile import label
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
# Register your models here.

@admin.register(Solicitud)
class SolicitudAdmin(admin.ModelAdmin):
    #change_list_template = 'smuggler/change_list.html'
    list_display = ('numsolicitud', 'numcontratocliente','fechasol', 'idproducto', 'cantidad','numcontratoproveedor', 'edit_link', 'cancel_link')
    
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, change, **kwargs)
        return form
    
    def get_fields(self, request, obj=None):
        fields = ['numcontratocliente', 'fechasol', 'idproducto', 'cantidad','numcontratoproveedor' ]
        return fields
        
    def hide_delete(self, request, obj=None):
        if request.user.get_username() == 'director_desarrollo':
            list_display_links = None
        elif request.solicitud.arpobada() == True:
            self.exclude = ('delete_link')
    
    def cancel_link(self, obj):
        info = obj._meta.app_label, obj._meta.model_name
        url = reverse('admin:%s_%s_delete' % info, args=(obj.numsolicitud,))
        return format_html('<a href="%s">Cancelar</a>'  % url)
    cancel_link.allow_tags = True
    cancel_link.short_description = 'Cancelar'

    def edit_link(self,obj):
        return format_html(u'<a href="/%s/%s/%s/change/">Editar</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numsolicitud))
    edit_link.allow_tags = True
    edit_link.short_description = "Editar"
    