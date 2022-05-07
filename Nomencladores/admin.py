
from pyexpat import model
from tabnanny import verbose
from django.contrib import admin
from django.shortcuts import render
from sqlalchemy import ForeignKey
from attr import field
from xlrd import open_workbook_xls
from simplejson import dump
from .models import Cliente, Pais, Proveedor, Producto, Provincia, Sucursal_Cuba, Casa_Matriz, Equipo, PPA, Neumatico, Bateria
from django.views.generic.base import TemplateView
from django.forms import forms, formset_factory
from django.contrib.auth.models import User
from import_export.admin import ImportExportModelAdmin
from import_export import resources
from .resources import ProveedorResource, ClienteResource, EquipoResource, PPAResource, NeumaticoResource, BateriaResource, MarcaResource
from django import forms
from import_export.forms import ImportForm, ConfirmImportForm
from .models import *
from .forms import *

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
    
    
@admin.register(Cliente)
class ClienteAdmin(ImportExportModelAdmin):
    resource_class = ClienteResource
    list_display = ('numcontratocliente', 'nomcliente', 'OSDE', 'codigoprovincia')
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(ClienteAdmin, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'codigoprovincia':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield
        
    
@admin.register(Pais)
class PaisAdmin(admin.ModelAdmin):
    fields = ['codigopais', 'nompais']
    list_display = ('codigopais', 'nompais')
    skip_unchanged = True
    report_skipped = False
    search_fields = ('nompais',)
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(PaisAdmin, self).formfield_for_dbfield(db_field, request, **kwargs)
        return formfield
        
@admin.register(Provincia)
class ProvinciaAdmin(admin.ModelAdmin):
    list_display = ('codigoprovincia', 'nombre', 'capital')


@admin.register(Marca)
class MarcaAdmin(ImportExportModelAdmin):
    resource_class = MarcaResource
    list_display = ('codigomarca', 'nommarca')
        
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        #form.base_fields['idpais'].widget.can_add_related = False
    
        return form
    

@admin.register(Equipo)
class EquipoAdmin(ImportExportModelAdmin):
    resource_class = EquipoResource
    list_display = ('idproducto', 'descripcion', 'modelo', 'marca')
        
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(EquipoAdmin, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'marca':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield
    


@admin.register(PPA)
class PPAAdmin(ImportExportModelAdmin):
    resource_class = PPAResource
    list_display = ('idproducto', 'descripcion', 'marca')
    
    def formfield_for_manytomany(self, db_field, request, **kwargs):
        if db_field.name == 'marca':
            kwargs["queryset"] = Equipo.objects.filter(owner=request.marca)
        return super(PPAAdmin, self).formfield_for_manytomany(db_field, request, **kwargs)
        
        
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(PPAAdmin, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'modelo': 
           formfield.widget.can_add_related = False
           formfield.widget.can_change_related = False
        elif db_field.name == 'marca':
           formfield.widget.can_add_related = False
           formfield.widget.can_change_related = False
        elif db_field.name == 'equipo':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield
    
    
@admin.register(Neumatico)
class NeumaticoAdmin(ImportExportModelAdmin):
    resource_class = NeumaticoResource
    list_display = ('idproducto', 'descripcion', 'diametro', 'grosor', 'marca')
        
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(NeumaticoAdmin, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'marca':
           formfield.widget.can_add_related = False
           formfield.widget.can_change_related = False
        return formfield


@admin.register(Bateria)
class BateriaAdmin(ImportExportModelAdmin):
    resource_class = BateriaResource
    list_display = ('idproducto', 'descripcion', 'voltaje', 'amperaje', 'marca')
        
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(BateriaAdmin, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'marca':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield