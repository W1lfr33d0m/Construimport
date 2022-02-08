from django.contrib import admin
from django import forms
from django.shortcuts import render
from .models import Solicitud
from django.views.generic.base import TemplateView
from Nomencladores.models import Producto, ProductoForm

# Register your models here.
@admin.register(Solicitud)
class SolicitudAdmin(admin.ModelAdmin):
    change_list_template = 'smuggler/change_list.html'
    list_display = ('numsolicitud', 'fechasol', 'aprobada')
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, change, **kwargs)
        #form.base_fields['numcontratocliente'].label = 'Cliente'
        #form.base_fields['cantidad'].label = 'Cantidad'
        form.base_fields['fechasol'].label = 'Fecha'
        #form.base_fields['idproducto'].label = 'Producto'
        #form.base_fields['numcontratoproveedor'].label = 'Proveedor'
        
        return form
    #form = ProductoForm
    