from cProfile import label
from email import message
from hashlib import new
from importlib import import_module
from msilib.schema import Verb
from multiprocessing.sharedctypes import Value
from tabnanny import verbose
from tkinter import Widget
from urllib import request
from django.contrib import admin
#from django import forms
from django.shortcuts import render
from attr import attributes, field
from pydantic import Field
#from .models import Solicitud, Solicitud_Equipo_Proveedor,  Solicitud_PPA_Proveedor, Solicitud_Neumatico_Proveedor, Solicitud_Bateria_Proveedor, Solicitud_Equipo, Solicitud_Equipo_Proxy, Solicitud_PPA, Solicitud_PPA_Proxy, Solicitud_Neumatico, Solicitud_Neumatico_Proxy,Solicitud_Bateria, Solicitud_Bateria_Proxy, Usuario
from django.views.generic.base import TemplateView
#from Nomencladores.models import Producto, Cliente, Proveedor, Pais
#from COMEX.models import EspecialistaCOMEX
from django.contrib.auth.models import Group, User, UserManager, GroupManager, PermissionsMixin
from django.core.exceptions import ValidationError, PermissionDenied
from ast import Raise
from django.forms import forms, formset_factory
from django import urls
from django import http
from django.utils.html import format_html
from django.urls import reverse, URLPattern, URLResolver, get_urlconf, set_urlconf
from import_export import resources, widgets, fields
from import_export.admin import ImportExportModelAdmin
from import_export.widgets import ForeignKeyWidget, ManyToManyWidget
from django.db.models.signals import post_save
from notifications.signals import notify
from django.forms import forms, formset_factory
from django.contrib import messages
from django.utils.translation import ngettext

# Register your models here.

