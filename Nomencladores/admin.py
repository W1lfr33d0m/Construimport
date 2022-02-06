from django.contrib import admin
from django.shortcuts import render
from .models import Cliente, Pais, Proveedor, Producto
from django.views.generic.base import TemplateView


# Register your models here.      
@admin.register(Proveedor)
class ProveedorAdmin(admin.ModelAdmin):
    list_display = ('numcontratoproveedor', 'nomproveedor', 'idpais')
    #list_filter = ('numcontratoproveedor', 'nomproveedor', 'idpais')
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
    
@admin.register(Pais)
class PaisAdmin(admin.ModelAdmin):
    list_display = ('idpais', 'pais')
    #list_filter = ('numcontratoproveedor', 'nomproveedor', 'idpais')
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, change, **kwargs)
        form.base_fields['idpais'].label = 'Código del País'
        
        return form
    save_as = True
    save_on_top = True     
