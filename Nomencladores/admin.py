
from tabnanny import verbose
from django.contrib import admin
from django.shortcuts import render
from sqlalchemy import ForeignKey
#from Solicitudes.models import Solicitud
from attr import field
from xlrd import open_workbook_xls
from simplejson import dump
#from .models import Cliente, Pais, Proveedor, Producto, Provincia, Sucursal_Cuba, Casa_Matriz, Equipo, PPA, Neumatico, Bateria
from django.views.generic.base import TemplateView
from import_export import resources, widgets, fields
from import_export.admin import ImportExportModelAdmin
from import_export.widgets import ForeignKeyWidget, Widget
from import_export.resources import *
from django.forms import forms, formset_factory
from django.contrib.auth.models import User

# Register your models here.     

#@admin.register(Proveedor_Producto)
