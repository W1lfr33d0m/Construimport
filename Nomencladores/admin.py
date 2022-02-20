from django.contrib import admin
from django.shortcuts import render
from .models import Cliente, Pais, Proveedor, Producto, ContratoCliente, ContratoProveedor
from django.views.generic.base import TemplateView


# Register your models here.      
@admin.register(Proveedor)
class ProveedorAdmin(admin.ModelAdmin):
    change_list_template = 'smuggler/change_list.html'
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

@admin.register(ContratoCliente)
class ContratoClienteAdmin(admin.ModelAdmin):
    list_display = ('numcontratocliente',)
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, change, **kwargs)
        form.base_fields['numcontratocliente'].label = 'Contrato'
        
        return form
    
@admin.register(ContratoProveedor)
class ContratoProveedor(admin.ModelAdmin):
    list_display = ('numcontratoproveedor',)
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, change, **kwargs)
        form.base_fields['numcontratoproveedor'].label = 'Contrato'
        
        return form
    
@admin.register(Producto)
class ProductoAdmin(admin.ModelAdmin):
    list_display = ('idproducto', 'nombreproducto', 'tipo', 'UM')
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, change, **kwargs)
        form.base_fields['idproducto'].label = 'Código'
        form.base_fields['nombreproducto'].label = 'Descripción'
        #form.base_fields['tipo'].label = 'tipo'
        #form.base_fields['UM'].label = 'UM' 
        
        return form