from unicodedata import name
from django.db import connection, reset_queries
from requests import request
import psycopg2
from colorama import Cursor
from django.contrib import admin
from django.shortcuts import render
#from .models import RegistroControlSolicitud
from django.views.generic.base import TemplateView
#from .models import EspecialistaCOMEX
from django.views.generic.base import TemplateView
from import_export import resources, widgets, fields
from import_export.admin import ImportExportModelAdmin
from import_export.widgets import ForeignKeyWidget, Widget
from django.forms import forms, formset_factory
from django.contrib.auth.models import User, Group

# Register your models here.