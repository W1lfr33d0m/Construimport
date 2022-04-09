from unicodedata import name
from django.db import connection
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
from django.forms import forms, formset_factory
from django.contrib.auth.models import User, Group

# Register your models here.
class EspecialistaCOMEXResource(resources.ModelResource):
    
    class Meta:
        model = EspecialistaCOMEX
        skip_unchanged = True
        report_skipped = False
        fields = ('idespecialista', 'categoria')

@admin.register(EspecialistaCOMEX)
class EspecialistaCOMEXAdmin(ImportExportModelAdmin):
    resource_class = EspecialistaCOMEXResource
    list_display = ('idespecialista', 'categoria')
    
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)   
        form.base_fields['idespecialista'].widget.can_delete_related = False
        return form
    
    #def __init__(self, *args, **kwargs):
    #    super().__init__(*args, **kwargs)
    #    self.fields['idespecialista'].queryset = User.has_module_perms(self, app_label='COMEX', ) 