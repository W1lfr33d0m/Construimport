
from django.contrib import admin
from django.shortcuts import render
from sqlalchemy import ForeignKey
from attr import field
from xlrd import open_workbook_xls
from simplejson import dump
from .models import Cliente, Pais, Proveedor, Producto
from django.views.generic.base import TemplateView
from import_export import resources, widgets, fields
from import_export.admin import ImportExportModelAdmin
from import_export.widgets import ForeignKeyWidget

# Register your models here.     

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
        fields = ('numcontratoproveedor', 'nomproveedor', 'idpais')

@admin.register(Proveedor)
class ProveedorAdmin(ImportExportModelAdmin):
    resource_class = ProveedorResource
    list_display = ('numcontratoproveedor', 'nomproveedor', 'idpais')
        
class ClienteResource(resources.ModelResource):
    
    class Meta:
        model = Cliente
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('numcontratocliente',)
        fields = ('numcontratocliente', 'nomcliente', 'OSDE')
    
@admin.register(Cliente)
class ClienteAdmin(ImportExportModelAdmin):
    resource_class = ClienteResource
    list_display = ('numcontratocliente', 'nomcliente', 'OSDE')
    
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
   