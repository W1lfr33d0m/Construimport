#from os import getgroups
from unicodedata import name
from django.db import connection, reset_queries
from celery import group
from fastapi import Query
from requests import request
import psycopg2
from colorama import Cursor
from django.contrib import admin
from django.shortcuts import render
#from .models import RegistroControlSolicitud
from django.views.generic.base import TemplateView
from .models import EspecialistaCOMEX
from django.views.generic.base import TemplateView
from import_export import resources, widgets, fields
from import_export.admin import ImportExportModelAdmin
from import_export.widgets import ForeignKeyWidget, Widget
from django.forms import ModelForm, forms, formset_factory
from django.contrib.auth.models import User, Group
from django.db.models import Q
from django.db import models
from django.db.models import Model
from .models import *

# Register your models here.

@admin.register(EspecialistaCOMEX)
class EspecialistaCOMEXAdmin(admin.ModelAdmin):
    
    list_display = ['idespecialista', 'categoria']
    
    def get_fields(self, request, obj=None):
        if request.user.groups.filter(name='Especialista_COMEX').exists():
            return self.fields['idespecialista']
        return super().get_fields(request, obj)

class Oferta_EquipoInline(admin.TabularInline):
    #resource_class = Solicitud_ProductoResource
    model = Oferta_Equipo_Proxy
    fk_name = 'solicitud'
    extra = 1
    max_num = 1
    #readonly_fields = ('item',)
    fields = ('equipo', 'cantidad', 'precio', 'importe')
    #Autocomplete_fields = ['', ]
        
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Oferta_EquipoInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'equipo':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield
    
@admin.register(Oferta_Equipo)
class Oferta_EquipoAdmin(admin.ModelAdmin):
    inlines = [Oferta_EquipoInline,]
    list_display = ['solicitud', ]    
    
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['pais', 'proveedor', 'especialista', 'solicitud']
        #form.base_fields['fechasol' ].readonly = True
        if request.user.groups.filter(name = 'Especialista_COMEX').exists():
            form.base_fields['pais'].widget.can_add_related = False
            form.base_fields['pais'].widget.can_delete_related = False
            form.base_fields['pais'].widget.can_change_related = False
            form.base_fields['proveedor'].widget.can_add_related = False
            form.base_fields['proveedor'].widget.can_delete_related = False
            form.base_fields['proveedor'].widget.can_change_related = False
            form.base_fields['especialista'].widget.can_add_related = False
            form.base_fields['especialista'].widget.can_delete_related = False
            form.base_fields['especialista'].widget.can_change_related = False
            form.base_fields['solicitud'].widget.can_add_related = False
            form.base_fields['solicitud'].widget.can_delete_related = False
            form.base_fields['solicitud'].widget.can_change_related = False
        return form
      