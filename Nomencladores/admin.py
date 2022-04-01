
from django.contrib import admin
from django.shortcuts import render
from sqlalchemy import ForeignKey
from Solicitudes.models import Solicitud
from attr import field
from xlrd import open_workbook_xls
from simplejson import dump
from .models import Cliente, Pais, Proveedor, Producto, Provincia, Proveedor_Producto
from django.views.generic.base import TemplateView
from import_export import resources, widgets, fields
from import_export.admin import ImportExportModelAdmin
from import_export.widgets import ForeignKeyWidget, Widget
from django.forms import forms, formset_factory
from django.contrib.auth.models import User

# Register your models here.     

#@admin.register(Proveedor_Producto)
class Proveedor_ProductoInLine(admin.TabularInline):
    model = Proveedor_Producto
    extra = 1

admin.site.register(Proveedor_Producto)

class ProveedorResource(resources.ModelResource):
    
    
    idpais = fields.Field(
        column_name='idpais', 
        attribute='idpais', 
        widget=ForeignKeyWidget(Pais, 'pais'))
    
    class Meta:
        model = Proveedor
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('numcontratoproveedor',)
        fields = ('numcontratoproveedor', 'nomproveedor', 'idpais', 'productos')

@admin.register(Proveedor)
class ProveedorAdmin(ImportExportModelAdmin):
    resource_class = ProveedorResource
    inlines = [Proveedor_ProductoInLine, ]
    list_display = ('numcontratoproveedor', 'nomproveedor', 'idpais')
    filter_horizontal = ['productos',]
    
    
        
class ClienteResource(resources.ModelResource):
    
    class Meta:
        model = Cliente
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('numcontratocliente',)
        fields = ('numcontratocliente', 'nomcliente', 'OSDE',)
    
@admin.register(Cliente)
class ClienteAdmin(ImportExportModelAdmin):
    resource_class = ClienteResource
    list_display = ('numcontratocliente', 'nomcliente', 'OSDE')
    
class PaisResource(resources.ModelResource):
    
    class meta:
        model = Pais
        skip_unchanged = True
        report_skipped = False
        
    
@admin.register(Pais)
class PaisAdmin(ImportExportModelAdmin):
    list_display = ('idpais', 'pais')
    
class ProvinciaResource(resources.ModelResource):
    
    class meta:
        model = Provincia
        skip_unchanged = True
        report_skipped = False
        fields = ('idprovincia', 'nombre', 'capital')
        
    
@admin.register(Provincia)
class ProvinciaAdmin(ImportExportModelAdmin):
    list_display = ('idprovincia', 'nombre', 'capital')
    

class ProductoResource(resources.ModelResource):
    
    class Meta:
        model = Producto
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('idproducto',)
        fields = ('idproducto', 'nombreproducto', 'tipo', 'UM')

@admin.register(Producto)
class ProductoAdmin(ImportExportModelAdmin):
    resource_class = ProductoResource
    list_display = ('idproducto', 'nombreproducto', 'tipo', 'UM')
   

        

    
        