from django.contrib import admin
from django.shortcuts import render
from .models import Solicitud, Cliente, Proveedor
from django.views.generic.base import TemplateView


# Register your models here.
@admin.register(Solicitud)
class SolicitudAdmin(admin.ModelAdmin):
    change_list_template = 'smuggler/change_list.html'
    list_display = ('numsolicitud', 'numcontratocliente', 'cantidad', 'idproducto', 'fechasol', 'numcontratoproveedor')
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, change, **kwargs)
        form.base_fields['numsolicitud'].label = 'Número'
        form.base_fields['numcontratocliente'].label = 'Cliente'
        form.base_fields['idproducto'].label = 'Producto'
        form.base_fields['fechasol'].label = 'Fecha'
        form.base_fields['numcontratoproveedor'].label = 'Proveedor'
        
        return form