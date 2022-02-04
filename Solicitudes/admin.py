from django.contrib import admin
from django.shortcuts import render
from .models import Solicitud, Cliente, Proveedor, BackupView
from django.views.generic.base import TemplateView


# Register your models here.
@admin.register(Solicitud)
class SolicitudAdmin(admin.ModelAdmin):
    list_display = ('numsolicitud', 'numcontratocliente', 'cantidad', 'idproducto', 'fechasol', 'numcontratoproveedor')
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, change, **kwargs)
        form.base_fields['numsolicitud'].label = 'Número'
        form.base_fields['numcontratocliente'].label = 'Cliente'
        form.base_fields['idproducto'].label = 'Producto'
        form.base_fields['fechasol'].label = 'Fecha'
        form.base_fields['numcontratoproveedor'].label = 'Proveedor'
        
        return form
    
    
@admin.register(Proveedor)
class ProveedorAdmin(admin.ModelAdmin):
    list_display = ('numcontratoproveedor', 'nomproveedor', 'idpais')
    list_filter = ('numcontratoproveedor', 'nomproveedor', 'idpais')
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, change, **kwargs)
        form.base_fields['numcontratoproveedor'].label = 'Contrato'
        form.base_fields['nomproveedor'].label = 'Nombre'
        form.base_fields['idpais'].label = 'País'
        
        return form
    save_as = True
    save_on_top = True
   # change_list_template = 'change_list_graph.html'
        
    
@admin.register(Cliente)
class ClienteAdmin(admin.ModelAdmin):
    list_display = ('numcontratocliente', 'nomcliente')
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, change, **kwargs)
        form.base_fields['numcontratocliente'].label = 'Contrato'
        form.base_fields['nomcliente'].label = 'Nombre'
        
        return form     
    
#@admin.register(BackupView)
#class BackupViewAdmin(admin.ModelAdmin):
#  change_list_template = 'smuggler/change_list.html'