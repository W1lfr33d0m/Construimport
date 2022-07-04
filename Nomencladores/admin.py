
from pyexpat import model
from tabnanny import verbose
from django.contrib import admin
from django.shortcuts import render
from numpy import delete
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
from django.http import HttpRequest, HttpResponse
from django.utils.html import format_html
from .models import *
from docx2pdf import convert
from docxtpl import DocxTemplate, InlineImage
import webbrowser
from django.contrib import messages
#from .forms import *

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
    add_form_template = 'proveedor_form.html'
    list_display = ('codmincex', 'nomproveedor', 'codigopais', 'clasificacion')
    #filter_horizontal = ['productos',]
    
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        form.base_fields['codigopais'].widget.can_add_related = False
        #form.base_fields['equipos'] = Equipo.objects.filter(marca = Marca.objects.all())
        # form.base_fields['marcas'].widget.can_add_related = False
        # form.base_fields['marcas'].widget.can_change_related = False
        # form.base_fields['marcas'].widget.can_delete_related = False
        form.base_fields['equipos'].widget.can_add_related = False
        form.base_fields['equipos'].widget.can_change_related = False
        form.base_fields['equipos'].widget.can_delete_related = False
        form.base_fields['ppa'].widget.can_add_related = False
        form.base_fields['ppa'].widget.can_change_related = False
        form.base_fields['ppa'].widget.can_delete_related = False
        form.base_fields['neumaticos'].widget.can_add_related = False
        form.base_fields['neumaticos'].widget.can_change_related = False
        form.base_fields['neumaticos'].widget.can_delete_related = False
        form.base_fields['baterias'].widget.can_add_related = False
        form.base_fields['baterias'].widget.can_change_related = False
        form.base_fields['baterias'].widget.can_delete_related = False
        
        return form
    
    
@admin.register(Ministerio)
class MinisterioAdmin(admin.ModelAdmin):
    list_display = ('reeup', 'nombre', 'siglas', 'correo', 'telefono', 'edit_link')
    
    def edit_link(self,obj):
        return format_html(u'<a href="/admin/%s/%s/%s/change/">Detalles</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.reeup))
    edit_link.allow_tags = True
    edit_link.short_description = "Detalles"
    

@admin.register(OSDE)
class OSDEAdmin(admin.ModelAdmin):
    list_display = ('reeup', 'nombre', 'siglas', 'ministerio', 'correo', 'telefono', 'edit_link')
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(OSDEAdmin, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'ministerio':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield
    
    def edit_link(self,obj):
        return format_html(u'<a href="/admin/%s/%s/%s/change/">Detalles</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.reeup))
    edit_link.allow_tags = True
    edit_link.short_description = "Detalles"

@admin.register(Cliente)
class ClienteAdmin(admin.ModelAdmin):
    list_display = ('reeup', 'nombre', 'OSDE', 'codigoprovincia', 'representante', 'fecha_caducidad', 'edit_link')
    
    def get_fields(self, request: HttpRequest, obj=None):
        #if request.user.groups.filter(name = 'Marketing').exists():
        return['reeup', 'nombre', 'siglas', 'direccion', 'correo', 'telefono', 'OSDE', 'codigoprovincia', 'representante', 'fecha_contrato']
        return super().get_fields(request, obj)
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
       formfield = super(ClienteAdmin, self).formfield_for_dbfield(db_field, request, **kwargs)
       if db_field.name == 'OSDE':
           formfield.widget.can_add_related = False
           formfield.widget.can_change_related = False
           formfield.widget.can_delete_related = False
       return formfield
        
    def edit_link(self,obj):
        return format_html(u'<a href="/admin/%s/%s/%s/change/">Detalles</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.reeup))
    edit_link.allow_tags = True
    edit_link.short_description = "Detalles"
    
    def response_post_save_add(self, request: HttpRequest, obj=None):
        delta = timezone.timedelta(days=365)
        obj.fecha_caducidad = obj.fecha_contrato + delta
        return super().response_post_save_add(request, obj)
    
    def exportar_clientes_pdf(self, request:HttpRequest, queryset):
        for traza in queryset:
            base_url = os.path.join('media') + '/Trazas/'
            asset_url = base_url + 'Generar Traza.docx'
            doc = DocxTemplate(asset_url)
            cliente = Cliente.objects.all(queryset)
            context = {
            'Cliente': cliente
            }
            doc.render(context)
            print(context['Clientes'])
            filename = 'Clientes.pdf'
            resultFilePath = 'media/Trazas/Trazas.docx'
            doc.save(resultFilePath)
            convert(resultFilePath, 'D:\Downloads')
            os.remove(resultFilePath)
            path = 'D:\Downloads'
            webbrowser.open(path)
        msg = "Trazas exportadas"
        self.message_user(request, msg, level=messages.SUCCESS)
        
    def exportar_trazas(self, request, queryset):     
        return self.exportar_trazas_pdf(request, queryset)
    exportar_trazas.short_description = 'Exportar Trazas'
    
@admin.register(Pais)
class PaisAdmin(admin.ModelAdmin):
    fields = ['codigopais', 'nompais']
    list_display = ('codigopais', 'nompais')
    
    search_fields = ('nompais',)
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(PaisAdmin, self).formfield_for_dbfield(db_field, request, **kwargs)
        return formfield
        
@admin.register(Provincia)
class ProvinciaAdmin(admin.ModelAdmin):
    list_display = ('codigoprovincia', 'nombre', 'capital')


@admin.register(Marca)
class MarcaAdmin(admin.ModelAdmin):
    resource_class = MarcaResource
    list_display = ('nommarca', 'pais', 'activa')
        
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        #form.base_fields['idpais'].widget.can_add_related = False
    
        return form
    
    
    def edit_link(self,obj):
        return format_html(u'<a href="/admin/%s/%s/%s/change/">Detalles</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.codigomarca))
    edit_link.allow_tags = True
    edit_link.short_description = "Detalles"

@admin.register(UM)
class UMAdmin(admin.ModelAdmin):
    list_display = ('codigoum', 'descripcionum')

@admin.register(Equipo)
class EquipoAdmin(admin.ModelAdmin):
    resource_class = EquipoResource
    list_display = ('idproducto', 'descripcion', 'modelo', 'marca', 'edit_link')
        
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(EquipoAdmin, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'marca' or db_field == 'UM':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
            formfield.widget.can_delete_related = False
        return formfield
    
    def get_form(self, request:HttpRequest, obj, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['idproducto', 'descripcion', 'UM', 'Marca', 'Modelo']
        if request.user.groups.filter(name = 'Marketing').exists():
            form.base_fields['UM'].widget.can_add_related = False
            form.base_fields['UM'].widget.can_delete_related = False
            form.base_fields['UM'].widget.can_change_related = False
        return form
    
    def edit_link(self,obj):
        return format_html(u'<a href="/admin/%s/%s/%s/change/">Detalles</a>' % (
        obj._meta.app_label, obj._meta.model_name, obj.idproducto))
    edit_link.allow_tags = True
    edit_link.short_description = "Detalles"

@admin.register(PPA)
class PPAAdmin(ImportExportModelAdmin):
    resource_class = PPAResource
    list_display = ('idproducto', 'descripcion', 'marca', 'edit_link')
    
    
    def formfield_for_manytomany(self, db_field, request, **kwargs):
        if db_field.name == 'marca':
            kwargs["queryset"] = Equipo.objects.filter(owner=request.marca)
        return super(PPAAdmin, self).formfield_for_manytomany(db_field, request, **kwargs)
        
    def get_form(self, request=HttpRequest, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        if request.user.groups.filter(name = 'Especialista_Marketing').exists():
            form.base_fields['marca'] = forms.ModelChoiceField(queryset=Marca.objects.filter(activa = True))
            form.base_fields['UM'].widget.can_add_related = False
            form.base_fields['UM'].widget.can_delete_related = False
            form.base_fields['UM'].widget.can_change_related = False
        return form
      
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(PPAAdmin, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'modelo': 
           formfield.widget.can_add_related = False
           formfield.widget.can_change_related = False
           formfield.widget.can_delete_related = False
        elif db_field.name == 'marca':
           formfield.widget.can_add_related = False
           formfield.widget.can_change_related = False
           formfield.widget.can_delete_related = False
        elif db_field.name == 'equipo':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
            formfield.widget.can_delete_related = False
        elif db_field.name == 'UM':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
            formfield.widget.can_delete_related = False
        return formfield
    
    def edit_link(self,obj):
        return format_html(u'<a href="/admin/%s/%s/%s/change/">Detalles</a>' % (
        obj._meta.app_label, obj._meta.model_name, obj.idproducto))
    edit_link.allow_tags = True
    edit_link.short_description = "Detalles"
    
@admin.register(Neumatico)
class NeumaticoAdmin(admin.ModelAdmin):
    resource_class = NeumaticoResource
    list_display = ('idproducto', 'descripcion', 'UM', 'diametro', 'grosor', 'marca', 'edit_link')
        
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(NeumaticoAdmin, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'marca' or db_field.name == 'UM':
           formfield.widget.can_add_related = False
           formfield.widget.can_change_related = False
           formfield.widget.can_delete_related = False
        return formfield

    def get_form(self, request:HttpRequest, obj, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['idproducto', 'descripcion', 'UM', 'Marca', 'activo', 'diametro', 'grosor']
        if request.user.groups.filter(name = 'Marketing').exists():
            form.base_fields['UM'].widget.can_add_related = False
            form.base_fields['UM'].widget.can_delete_related = False
            form.base_fields['UM'].widget.can_change_related = False
        return form

    def edit_link(self,obj):
        return format_html(u'<a href="/admin/%s/%s/%s/change/">Detalles</a>' % (
        obj._meta.app_label, obj._meta.model_name, obj.idproducto))
    edit_link.allow_tags = True
    edit_link.short_description = "Detalles"
    

@admin.register(Bateria)
class BateriaAdmin(ImportExportModelAdmin):
    resource_class = BateriaResource
    list_display = ('idproducto', 'descripcion', 'UM', 'voltaje', 'amperaje', 'marca', 'edit_link')
        
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(BateriaAdmin, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'marca':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
            formfield.widget.can_delete_related = False
        return formfield
    
    def get_form(self, request=HttpRequest, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        if request.user.groups.filter(name = 'Especialista_Marketing').exists():
            form.base_fields['marca'] = forms.ModelChoiceField(queryset=Marca.objects.filter(activa = True))
            form.base_fields['UM'].widget.can_add_related = False
            form.base_fields['UM'].widget.can_delete_related = False
            form.base_fields['UM'].widget.can_change_related = False
        return form
    
    def edit_link(self,obj):
        return format_html(u'<a href="/admin/%s/%s/%s/change/">Detalles</a>' % (
        obj._meta.app_label, obj._meta.model_name, obj.idproducto))
    edit_link.allow_tags = True
    edit_link.short_description = "Detalles"