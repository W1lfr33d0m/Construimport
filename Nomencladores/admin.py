
from tabnanny import verbose
from django.contrib import admin
from django.shortcuts import render
from sqlalchemy import ForeignKey
from Solicitudes.models import Solicitud
from attr import field
from xlrd import open_workbook_xls
from simplejson import dump
from .models import Cliente, Pais, Proveedor, Producto, Provincia, Proveedor_Producto, Sucursal_Cuba
from django.views.generic.base import TemplateView
from import_export import resources, widgets, fields
from import_export.admin import ImportExportModelAdmin
from import_export.widgets import ForeignKeyWidget, Widget
from import_export.resources import *
from django.forms import forms, formset_factory
from django.contrib.auth.models import User

# Register your models here.     

#@admin.register(Proveedor_Producto)
class Proveedor_ProductoInLine(admin.TabularInline):
    model = Proveedor_Producto
    extra = 1
    verbose_name = ('Producto')

class Sucursal_CubaInline(admin.TabularInline):
    model = Sucursal_Cuba
    extra = 1
    max_num = 1
    verbose_name = 'Sucursal'
    verbose_name_plural = 'Sucursal'


class Casa_MatrizInline(admin.TabularInline):
    model = Sucursal_Cuba
    extra = 1
    max_num = 1
    verbose_name = 'Casa Matriz'
    verbose_name_plural = 'Casa Matriz'


class ProveedorResource(resources.ModelResource):
    
    idpais = fields.Field(
        column_name='idpais', 
        attribute='idpais', 
        widget=ForeignKeyWidget(Pais, 'pais'))
    
    class Meta:
        model = Proveedor
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('codmincex',)
        fields = ('codmincex', 'nomproveedor', 'idpais', 'productos', 'clasificacion')

@admin.register(Proveedor)
class ProveedorAdmin(ImportExportModelAdmin):
    resource_class = ProveedorResource
    inlines = [Proveedor_ProductoInLine, Sucursal_CubaInline, Casa_MatrizInline]
    list_display = ('codmincex', 'nomproveedor', 'idpais', 'clasificacion')
    filter_horizontal = ['productos',]
    
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        form.base_fields['idpais'].widget.can_add_related = False
        
        return form
    
    
        
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
    resource_class = PaisResource
    list_display = ('idpais', 'pais')
    
class ProvinciaResource(resources.ModelResource):
    
    class meta:
        model = Provincia
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('codigoprovincia',)
        fields = ('codigoprovincia', 'nombre', 'capital')
        
    
@admin.register(Provincia)
class ProvinciaAdmin(ImportExportModelAdmin):
    resource_class = ProvinciaResource
    list_display = ('codigoprovincia', 'nombre', 'capital')
    

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
   

        

    
        