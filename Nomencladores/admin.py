
from tabnanny import verbose
from django.contrib import admin
from django.shortcuts import render
from sqlalchemy import ForeignKey
#from Solicitudes.models import Solicitud
from attr import field
from xlrd import open_workbook_xls
from simplejson import dump
from .models import Cliente, Pais, Proveedor, Producto, Provincia, Sucursal_Cuba, Casa_Matriz, Equipo, PPA, Neumatico, Bateria
from django.views.generic.base import TemplateView
from import_export import resources, widgets, fields
from import_export.admin import ImportExportModelAdmin
from import_export.widgets import ForeignKeyWidget, Widget
from import_export.resources import *
from django.forms import forms, formset_factory
from django.contrib.auth.models import User

# Register your models here.     
class Sucursal_CubaInline(admin.StackedInline):
    model = Sucursal_Cuba
    extra = 1
    max_num = 1
    verbose_name = 'Sucursal'
    verbose_name_plural = 'Sucursal'


class Casa_MatrizInline(admin.StackedInline):
    model = Casa_Matriz
    extra = 1
    max_num = 1
    verbose_name = 'Casa Matriz'
    verbose_name_plural = 'Casa Matriz'


class ProveedorResource(resources.ModelResource):
    
    codigopais = fields.Field(
        column_name='codigopais', 
        attribute='codigopais', 
        widget=ForeignKeyWidget(Pais, 'pais'))
    
    class Meta:
        model = Proveedor
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('codmincex',)
        fields = ('codmincex', 'nomproveedor', 'codigopais', 'productos', 'clasificacion')

@admin.register(Proveedor)
class ProveedorAdmin(ImportExportModelAdmin):
    resource_class = ProveedorResource
    inlines = [Sucursal_CubaInline, Casa_MatrizInline]
    list_display = ('codmincex', 'nomproveedor', 'codigopais', 'clasificacion')
    #filter_horizontal = ['productos',]
    
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        form.base_fields['codigopais'].widget.can_add_related = False
    
        return form
    
class ClienteResource(resources.ModelResource):
    
    class Meta:
        model = Cliente
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('numcontratocliente',)
        fields = ('numcontratocliente', 'nomcliente', 'OSDE', 'provincia')
    
@admin.register(Cliente)
class ClienteAdmin(ImportExportModelAdmin):
    resource_class = ClienteResource
    list_display = ('numcontratocliente', 'nomcliente', 'OSDE', 'provincia')
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(ClienteAdmin, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'provincia':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield
    
class PaisResource(resources.ModelResource):
    
    class meta:
        model = Pais
        skip_unchanged = True
        report_skipped = False
        exclude = ('id',)
        import_id_fields = ('codigopais', 'nompais')    
    
@admin.register(Pais)
class PaisAdmin(ImportExportModelAdmin):
    resource_class = PaisResource
    fields = ['codigopais', 'nompais']
    list_display = ('codigopais', 'nompais')
    skip_unchanged = True
    report_skipped = True
    exclude = ('id',)
    
        
@admin.register(Provincia)
class ProvinciaAdmin(admin.ModelAdmin):
    list_display = ('codigoprovincia', 'nombre', 'capital')
    
class EquipoResource(resources.ModelResource):
    
    class meta:
        model = Pais
        skip_unchanged = True
        report_skipped = False    
    
@admin.register(Equipo)
class EquipoAdmin(ImportExportModelAdmin):
    resource_class = EquipoResource
    list_display = ('idproducto', 'descripcion', 'modelo')
        
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        #form.base_fields['idpais'].widget.can_add_related = False
    
        return form
    
class PPAResource(resources.ModelResource):
    
    class meta:
        model = Pais
        skip_unchanged = True
        report_skipped = False    
    
@admin.register(PPA)
class PPAAdmin(ImportExportModelAdmin):
    resource_class = PPAResource
    list_display = ('idproducto', 'descripcion')
        
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        #form.base_fields['idpais'].widget.can_add_related = False
    
        return form
    
class NeumaticoResource(resources.ModelResource):
    
    class meta:
        model = Pais
        skip_unchanged = True
        report_skipped = False    
    
@admin.register(Neumatico)
class NeumaticoAdmin(ImportExportModelAdmin):
    resource_class = NeumaticoResource
    list_display = ('idproducto', 'descripcion', 'diametro', 'grosor')
        
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        #form.base_fields['idpais'].widget.can_add_related = False
    
        return form
    
class BateriaResource(resources.ModelResource):
    
    class meta:
        model = Pais
        skip_unchanged = True
        report_skipped = False    
    
@admin.register(Bateria)
class BateriaAdmin(ImportExportModelAdmin):
    resource_class = BateriaResource
    list_display = ('idproducto', 'descripcion', 'voltaje', 'amperaje')
        
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        #form.base_fields['idpais'].widget.can_add_related = False
    