from cProfile import label
from multiprocessing.sharedctypes import Value
from django.contrib import admin
#from django import forms
from django.shortcuts import render
from .models import Solicitud
from django.views.generic.base import TemplateView
from Nomencladores.models import Producto, ProductoForm, Cliente, Proveedor
from django.core.exceptions import ValidationError, PermissionDenied
from ast import Raise
from django.forms import forms
# Register your models here.
@admin.register(Solicitud)
class SolicitudAdmin(admin.ModelAdmin):
    change_list_template = 'smuggler/change_list.html'
    def get_fields(self, request, obj=None):
        fields = [ ]
        if request.user.get_username() == 'director_desarrollo':
            fields.append( 'aprobada')
        return fields
    list_display = ('numsolicitud', 'fechasol', 'cantidad', 'numcontratocliente', 'idproducto', 'numcontratoproveedor', 'aprobada')
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, change, **kwargs)
        if 'numsolicitud' in request.session: 
            for key, value in request.session['numsolicitud'].items():
                Solicitud.numsolicitud = form.fields(label = 'Solicitud')
                #form.base_fields['numsolicitud'].label = 'Solicitud'
                form.base_fields['numcontratocliente'].label = 'Cliente'
                form.base_fields['cantidad'].label = 'Cantidad'
                form.base_fields['fechasol'].label = 'Fecha'
                form.base_fields['idproducto'].label = 'Producto'
                form.base_fields['numcontratoproveedor'].label = 'Proveedor'      
        return form
   
    #form = ProductoForm