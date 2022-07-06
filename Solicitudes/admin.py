from argparse import Action
from cProfile import label
import email
from fileinput import filename
from http import client
from sre_constants import SUCCESS
from tkinter.messagebox import NO
from types import new_class
from django.core.mail import send_mail
from email import message
from hashlib import new
from importlib import import_module
from msilib.schema import Verb
from multiprocessing.sharedctypes import Value
import re
from io import BytesIO
#from Construimport.settings import MEDIA_ROOT
from docxtpl import DocxTemplate, InlineImage
from django_x509.base.models import default_validity_start , default_cert_validity_end , default_ca_validity_end
#from Construimport-Server.settings import MEDIA_ROOT
from tabnanny import verbose
from tkinter import Widget
from unicodedata import name
from urllib import request
from django.contrib import admin
from django.dispatch import receiver
#from django import forms
from django.shortcuts import render
from numpy import character, integer
from requests import post
from attr import attributes, field
from pydantic import Field
from .models import Solicitud, Solicitud_Equipo_Proveedor,  Solicitud_PPA_Proveedor, Solicitud_Neumatico_Proveedor, Solicitud_Bateria_Proveedor, Solicitud_Equipo, Solicitud_Equipo_Proxy, Solicitud_PPA, Solicitud_PPA_Proxy, Solicitud_Neumatico, Solicitud_Neumatico_Proxy,Solicitud_Bateria, Solicitud_Bateria_Proxy
from django.views.generic.base import TemplateView
from Nomencladores.models import Producto, Cliente, Proveedor, Pais, Equipo, PPA, Neumatico, Bateria
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
from django.utils.translation import gettext as _
from COMEX.models import Oferta_Equipo, Oferta_Equipo_Proxy
from django.http import HttpRequest, HttpResponse
from COMEX.admin import *
#from .views import *
from .forms import *
import zipfile
from djangoconvertvdoctopdf.convertor import ConvertFileModelField, StreamingConvertedPdf, StreamingHttpResponse
from django.core.files import File
from docx2pdf import convert
import os.path
import webbrowser
import win32com.client as client
from smuggler.utils import (
    load_fixtures,
    save_uploaded_file_on_disk,
    serialize_to_response,
)
# Register your models here.

class SolicitudResource(resources.ModelResource):
    
    cliente = fields.Field(
        column_name= 'cliente',
        attribute= 'cliente',
        widget= ForeignKeyWidget(Cliente, 'nomcliente')
    )
    
    class Meta:
        model = Solicitud
        skip_unchanged = True
        report_skipped = False
        import_id_fields = (
                            'cliente', 
                            'codmincex', 
                            
                            )
        readonly_fields = (
                          'numsolicitud', 
                          'fechasol'
                          )
        fields = (
                  'cliente', 
                  'cantidad',
                  'codmincex', 
                  'valor_estimado',
                  'estado', 
                  
                  )

"""
Clases de Equipo
    
"""
class Solicitud_Equipo_ProveedorInline(admin.StackedInline):
    model =  Solicitud_Equipo_Proveedor
    #fk_name = 'numsolicitud'
    extra = 1
    max_num = 1
    fields = ('codmincex',)
    verbose = 'Proveedor'
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_Equipo_ProveedorInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        formfield.widget.can_add_related = False
        formfield.widget.can_change_related = False
        return formfield
    
    def formfield_for_manytomany(self, db_field, request: HttpRequest, **kwargs):
        if db_field.name == 'codmincex':
            sei = self.fields['idproducto']
            kwargs['queryset'] = Solicitud_Equipo_Proveedor.objects.filter(request)
        return super().formfield_for_manytomany(db_field, request, **kwargs)
      
class Solicitud_EquipoInline(admin.StackedInline):
    #resource_class = Solicitud_ProductoResource
    model = Solicitud_Equipo_Proxy
    fk_name = 'numsolicitud'
    extra = 1
    max_num = 1
    #readonly_fields = ('item',)
    fields = ('idproducto', 'cantidad')
    #Autocomplete_fields = ['', ]
        
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_EquipoInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'idproducto':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield
    
    def get_marca(self, obj):
        return obj.equipo.all().values_list('marca', flat=True)
    
@admin.register(Solicitud_Equipo)
class Solicitud_EquipoAdmin(admin.ModelAdmin):
    add_form_template = 'solicitud_form.html'
    actions = ['exportar_solicitud',]
    #resource_class = SolicitudResource
    #productos_display = Solicitud_ProductoInlineAdmin.productos_display
    inlines = (Solicitud_EquipoInline, Solicitud_Equipo_ProveedorInline)
    #readonly_fields = ('numsolicitud')
        
    list_display = (
                   'numsolicitud', 
                   'cliente', 
                   'fechasol', 
                   'estado',
                   'valor_estimado',
                   'fecha_venc',
                   'edit_link',
                   )
    
    def get_fields(self, request, obj):  
        if request.user.groups.filter(name = 'Marketing').exists():
            return ['cliente', 'observaciones', 'valor_estimado']
        elif request.user.groups.filter(name = 'Director_Desarrollo').exists():
           return ['estado', 'especialista']
        elif request.user.groups.filter(name = 'Director_Desarrollo').exists() and obj.estado == 'Aprobada':
            return ['cliente', 'observaciones', 'valor_estimado', 'estado', 'especialista']
        return super().get_fields(request, obj)
    
    def get_form(self, request:HttpRequest, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['cliente', 'estado', 'especialista']
        if request.user.groups.filter(name = 'Marketing').exists():
            form.base_fields['cliente'].widget.can_add_related = False
            form.base_fields['cliente'].widget.can_delete_related = False
            form.base_fields['cliente'].widget.can_change_related = False
        elif request.user.groups.filter(name = 'Director_Desarrollo').exists() and obj:
            form.base_fields['especialista'] = forms.ModelChoiceField(queryset=User.objects.filter(groups = 4))
            form.base_fields['especialista'].widget.can_add_related = False
            form.base_fields['especialista'].widget.can_delete_related = False
            form.base_fields['especialista'].widget.can_change_related = False
            # form.base_fields['cliente'].disabled = True
            # form.base_fields['observaciones'].disabled = True
            # form.base_fields['valor_estimado'].disabled = True
            # form.base_fields['plazo'].disabled = True
        return form
    
    def render_change_form(self, request, context, add=False, change=False, form_url='', obj=None):
        context.update({
            'show_save': True,
            'show_save_and_continue': False,
            'show_delete': False
        })
        return super().render_change_form(request, context, add, change, form_url, obj)
    
    def has_change_permission(self, request: HttpRequest, obj=None):
        if request.user.groups.filter(name = 'Director_Desarrollo').exists() and obj and obj.estado == 'Aprobada': 
            return False
        if request.user.groups.filter(name = 'Director_Desarrollo').exists() and obj and obj.estado == 'Cancelada': 
            return False       
        return super(Solicitud_EquipoAdmin, self).has_change_permission(request, obj)       
    
    def get(self, request, *args, **kwargs):
        try:
            return self.render(self.get_form())
        except KeyError:
            return super().get(request, *args, **kwargs)
    
    def edit_link(self, obj):
        return format_html(u'<a href="/admin/%s/%s/%s/change/">Detalles</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numsolicitud))
    edit_link.allow_tags = True
    edit_link.short_description = "Detalles"

    def exportar_solicitud_pdf(self, request:HttpRequest, queryset):              
        for solicitud in queryset:        
            base_url = os.path.join('media') + '/Solicitudes/'
            asset_url = base_url + 'Generar Solicitud Equipo.docx'
            doc = DocxTemplate(asset_url)
            cliente = Cliente.objects.get(nombre = solicitud.cliente)
            eqlist = []
            for i in Solicitud_Equipo_Proxy.objects.filter(numsolicitud = solicitud.numsolicitud):
                for j in Equipo.objects.filter(descripcion = i.idproducto):
                    eqdict = {'producto': {'idproducto': j.idproducto, 'descripcion': j.descripcion, 'UM': j.UM, 'cantidad': i.cantidad}}
                    eqlist.append(eqdict)
            equipo_proxy = Solicitud_Equipo_Proxy.objects.get(numsolicitud = solicitud.numsolicitud)
            equipo = Equipo.objects.get(descripcion = equipo_proxy.idproducto)
            nomespecialista = request.user.first_name
            apespecialista = request.user.last_name
            nomdirector = User.objects.get(username = 'director_desarrollo').first_name
            apdirector = User.objects.get(username = 'director_desarrollo').last_name
            fecha = "{:%d - %m - %Y}".format(solicitud.fechasol)
            fecha_venc = "{:%d - %m - %Y}".format(solicitud.fecha_venc)
            print(fecha)
            context = {
                'numsolicitud':solicitud.numsolicitud,
                'fecha': fecha,
                'fecha_caducidad': fecha_venc,
                'cliente': solicitud.cliente,
                'representante': cliente.representante,
                'telefono': cliente.telefono,
                'correo': cliente.correo,
                'valor_estimado': solicitud.valor_estimado,
                'observaciones': solicitud.observaciones,
                'equipos':eqlist,
                'nombre_usuario': nomespecialista,
                'ap_usuario': apespecialista,
                'nombre_director': nomdirector,
                'ap_director': apdirector,
            }
            doc.render(context)
            #filename = 'Solicitud de Equipos' + str(solicitud.numsolicitud) + '.pdf'
            resultFilePath = 'media/Solicitud de Equipos' + str(solicitud.numsolicitud) + '.docx'
            doc.save(resultFilePath)
            convert(resultFilePath, 'D:\Downloads')
            os.remove(resultFilePath)
            path = 'D:\Downloads'
            webbrowser.open(path)
        msg2 = "Documentos generados correctamente"
        self.message_user(request, msg2, level=messages.SUCCESS)
    
    
    def exportar_solicitud(self, request, queryset):   
        return self.exportar_solicitud_pdf(request, queryset)
    exportar_solicitud.short_description = 'Generar Documento en PDF'
        
    def response_change(self, request:HttpRequest, obj, post_url_continue=None):
        try:
            if request.user.groups.filter(name='Director_Desarrollo').exists() and obj.estado == 'Aprobada' and obj.especialista is not None:
                for p in obj.proveedores.all().values_list('codmincex', flat=True):
                    oferta_equipo = Oferta_Equipo()
                    oferta_equipo.solicitud_id = obj.numsolicitud
                    oferta_equipo.proveedor_id = p
                    oferta_equipo.especialista = obj.especialista
                    oferta_equipo.valor_estimado = obj.valor_estimado
                    oferta_equipo.save()
                    for i in obj.equipo.all().values():
                        q1 = Q(numsolicitud=obj.numsolicitud)
                        q2 = Q(idproducto=i['descripcion'])
                        equipo_proxy = Solicitud_Equipo_Proxy.objects.get(q1 | q2)
                        print(obj.numsolicitud)
                        print(equipo_proxy.cantidad)
                        oferta = Oferta_Equipo_Proxy()
                        oferta.oferta_id = oferta_equipo.numero
                        oferta.equipo = equipo_proxy
                        oferta.cantidad = equipo_proxy.cantidad
                        oferta.save()
            msg2 = "Solicitud modificada correctamente"
            self.message_user(request, msg2, level=messages.SUCCESS)
            return self.response_post_save_change(request, obj)
        except:
            if obj.estado == 'Cancelada':
                obj.especialista = None
            return self.response_post_save_change(request, obj)
        
    def response_post_save_add(self, request, obj=None):
        if request.user.groups.filter(name='Especialista_Marketing').exists():
          send_mail(
                'Nueva solicitud',
                'Tiene solicitudes pendientes a aprobar',
                [User.groups.filter(name='Especialista_marketing').values_list('email', flat=True)],
                [User.groups.filter(name='Director_Desarrollo').values_list('email', flat=True)],
                fail_silently=False,
                )
        return super(Solicitud_EquipoAdmin, self).response_post_save_add(request, obj)
    
    def get(self, request, *args, **kwargs):
        try:
            return self.render(self.get_form())
        except KeyError:
             return super().get(request, *args, **kwargs)
    
    def form_valid(self, form):
        return super().form_valid(form)

"""
Clases de Piezas
    
"""
class Solicitud_PPA_ProveedorInline(admin.StackedInline):
    model =  Solicitud_PPA_Proveedor
    fk_name = 'numsolicitud'
    extra = 1
    fields = ('codmincex',)
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_PPA_ProveedorInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        formfield.widget.can_add_related = False
        formfield.widget.can_change_related = False
        return formfield
    

class Solicitud_PPAInline(admin.StackedInline):
    #resource_class = Solicitud_ProductoResource
    model = Solicitud_PPA_Proxy
    fk_name = 'numsolicitud'
    extra = 0
    #readonly_fields = ('item',)
    fields = ('idproducto', 'cantidad')
    #Autocomplete_fields = ['productos', ]
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_PPAInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'idproducto' or db_field.name == 'proveedor':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield
    

@admin.register(Solicitud_PPA)
class Solicitud_PPAAdmin(admin.ModelAdmin):
    add_form_template = 'solicitud_form.html'
    resource_class = SolicitudResource
    actions = ['exportar_solicitud',]
    #productos_display = Solicitud_ProductoInlineAdmin.productos_display
    inlines = (Solicitud_PPAInline, )
    list_display = (
                   'numsolicitud', 
                   'cliente', 
                   'fechasol', 
                   'estado',
                   'valor_estimado',
                   'fecha_venc',
                   'edit_link',
                   )
    
    #filter_horizontal = ('productos', )            
    
    def get_fields(self, request, obj):  
        if request.user.groups.filter(name = 'Marketing').exists():
            return ['cliente', 'observaciones', 'valor_estimado']
        elif request.user.groups.filter(name = 'Director_Desarrollo').exists():
           #print(User.objects.filter(groups = 'Especialista_COMEX_Equipo'))
        #    for user in request.user.objects.all:
        #     self.fields['especialista'] = request.user.groups.filter(name = 'Especialista_COMEX_Equipo')
        #     print(self.fields['especialista'])
           return ['estado', 'especialista']
        return super().get_fields(request, obj)
            
    def render_change_form(self, request, context, add=False, change=False, form_url='', obj=None):
        context.update({
            'show_save': True,
            'show_save_and_continue': False,
            'show_delete': False
        })
        return super().render_change_form(request, context, add, change, form_url, obj)
    
    def get_form(self, request:HttpRequest, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['cliente', 'estado', 'especialista']
        #form.base_fields['fechasol' ].readonly = True
        if request.user.groups.filter(name = 'Especialista_Marketing').exists():
            form.base_fields['cliente'].widget.can_add_related = False
            form.base_fields['cliente'].widget.can_delete_related = False
            form.base_fields['cliente'].widget.can_change_related = False
        elif request.user.groups.filter(name = 'Director_Desarrollo').exists() and obj: 
            form.base_fields['especialista'] = forms.ModelChoiceField(queryset=User.objects.filter(groups = 5))
            form.base_fields['especialista'].widget.can_add_related = False
            form.base_fields['especialista'].widget.can_delete_related = False
            form.base_fields['especialista'].widget.can_change_related = False
        return form
    
    def exportar_solicitud_pdf(self, request:HttpRequest, queryset):              
        for solicitud in queryset:        
            base_url = os.path.join('media') + '/Solicitudes/'
            asset_url = base_url + 'Generar Solicitud PPA.docx'
            doc = DocxTemplate(asset_url)
            cliente = Cliente.objects.get(nombre = solicitud.cliente)
            ppalist = []
            for i in Solicitud_PPA_Proxy.objects.filter(numsolicitud = solicitud.numsolicitud):
                for j in PPA.objects.filter(descripcion = i.idproducto):
                    ppadict = {'producto': {'idproducto': j.idproducto, 'descripcion': j.descripcion, 'UM': j.UM, 'cantidad': i.cantidad}}
                    ppalist.append(ppadict)
            ppa_proxy = Solicitud_PPA_Proxy.objects.get(numsolicitud = solicitud.numsolicitud)
            ppa = PPA.objects.get(descripcion = ppa_proxy.idproducto)
            nomespecialista = request.user.first_name
            apespecialista = request.user.last_name
            nomdirector = User.objects.get(username = 'director_desarrollo').first_name
            apdirector = User.objects.get(username = 'director_desarrollo').last_name
            fecha = "{:%d - %m - %Y}".format(solicitud.fechasol)
            fecha_venc = "{:%d - %m - %Y}".format(solicitud.fecha_venc)
            context = {
                'numsolicitud':solicitud.numsolicitud,
                'fecha': fecha,
                'fecha_caducidad': fecha_venc,
                'cliente': solicitud.cliente,
                'representante': cliente.representante,
                'telefono': cliente.telefono,
                'correo': cliente.correo,
                'valor_estimado': solicitud.valor_estimado,
                'observaciones': solicitud.observaciones,
                'ppa':ppalist,
                'nombre_usuario': nomespecialista,
                'ap_usuario': apespecialista,
                'nombre_director': nomdirector,
                'ap_director': apdirector,
            }
            doc.render(context)
            #filename = 'Solicitud de Equipos' + str(solicitud.numsolicitud) + '.pdf'
            resultFilePath = 'media/Solicitud de PPA' + str(solicitud.numsolicitud) + '.docx'
            doc.save(resultFilePath)
            convert(resultFilePath, 'D:\Downloads')
            os.remove(resultFilePath)
            path = 'D:\Downloads'
            webbrowser.open(path)
        msg2 = "Documentos generados correctamente"
        self.message_user(request, msg2, level=messages.SUCCESS)
    
    
    def exportar_solicitud(self, request, queryset):   
        return self.exportar_solicitud_pdf(request, queryset)
    exportar_solicitud.short_description = 'Generar Documento en PDF'
       
    def response_change(self, request:HttpRequest, obj, post_url_continue=None):
        if request.user.groups.filter(name='Director_Desarrollo').exists() and obj.estado == 'Aprobada' and obj.especialista is not None:
            for p in obj.proveedores.all().values_list('codmincex', flat=True):
                oferta_ppa = Oferta_PPA()
                oferta_ppa.solicitud_id = obj.numsolicitud
                oferta_ppa.proveedor_id = p
                oferta_ppa.especialista = obj.especialista
                oferta_ppa.valor_estimado = obj.valor_estimado
                oferta_ppa.save()
                for i in obj.equipo.all().values():
                    q1 = Q(numsolicitud=obj.numsolicitud)
                    q2 = Q(idproducto=i['descripcion'])
                    ppa_proxy = Solicitud_PPA_Proxy.objects.get(q1 | q2)
                    # idproducto = i['idproducto']
                    # equipo_proxy.idproducto = Equipo.objects.get(idproducto)
                    oferta = Oferta_PPA_Proxy()
                    oferta.oferta_id = oferta_ppa.numero
                    oferta.ppa = ppa_proxy
                    oferta.cantidad = ppa_proxy.cantidad
                    oferta.save()
        msg2 = "Solicitud modificada correctamente"
        self.message_user(request, msg2, level=messages.SUCCESS)
        return self.response_post_save_change(request, obj)
    
    def response_post_save_add(self, request, obj=None):
        if request.user.groups.filter(name='Especialista_Marketing').exists():
          send_mail(
                'Nueva solicitud',
                'Tiene solicitudes pendientes a aprobar',
                [User.groups.filter(name='Especialista_marketing').values_list('email', flat=True)],
                [User.groups.filter(name='Director_Desarrollo').values_list('email', flat=True)],
                fail_silently=False,
                )
        return super(Solicitud_PPAAdmin, self).response_post_save_add(request, obj)
       
    def get_inline_formsets(self, request, formsets= None, inline_instances = None, obj=None):
        return super().get_inline_formsets(request, formsets, inline_instances, obj)
    
    
    def edit_link(self,obj):
        return format_html(u'<a href="/admin/%s/%s/%s/change/">Detalles</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numsolicitud))
    edit_link.allow_tags = True
    edit_link.short_description = "Detalles"

"""
Clases de Neumaticos
    
"""
class Solicitud_Neumatico_ProveedorInline(admin.StackedInline):
    model =  Solicitud_Neumatico_Proveedor
    fk_name = 'numsolicitud'
    extra = 1
    fields = ('codmincex',)
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_Neumatico_ProveedorInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        formfield.widget.can_add_related = False
        formfield.widget.can_change_related = False
        return formfield
    
class Solicitud_NeumaticoInline(admin.StackedInline):
      
    model = Solicitud_Neumatico_Proxy
    fk_name = 'numsolicitud'
    extra = 0
    #readonly_fields = ('item',)
    fields = ('idproducto', 'cantidad')
    #Autocomplete_fields = ['productos', ]
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_NeumaticoInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'idproducto' or db_field.name == 'proveedor':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield


@admin.register(Solicitud_Neumatico)
class Solicitud_NeumaticoAdmin(admin.ModelAdmin):
    #resource_class = SolicitudResource
    #productos_display = Solicitud_ProductoInlineAdmin.productos_display
    add_form_template = 'solicitud_form.html'
    inlines = (  Solicitud_NeumaticoInline, )
    actions = ['exportar_solicitud',]
    list_display = (
                   'numsolicitud', 
                   'cliente', 
                   'fechasol', 
                   'estado',
                   'valor_estimado',
                   'fecha_venc',
                   'edit_link',
                   )
    
    #filter_horizontal = ('productos', )    
    
    def get_fields(self, request, obj):  
        if request.user.groups.filter(name = 'Marketing').exists():
            return ['cliente', 'observaciones', 'valor_estimado', 'plazo']
        elif request.user.groups.filter(name = 'Director_Desarrollo').exists():
           return ['estado', 'especialista']
        elif request.user.groups.filter(name = 'Director_Desarrollo').exists() and obj.estado == 'Aprobada':
            return ['cliente', 'observaciones', 'valor_estimado', 'estado', 'especialista']
        return super().get_fields(request, obj)
    
    def render_change_form(self, request, context, add=False, change=False, form_url='', obj=None):
        context.update({
            'show_save': True,
            'show_save_and_continue': False,
            'show_delete': False
        })
        return super().render_change_form(request, context, add, change, form_url, obj)
            
    def get_form(self, request:HttpRequest, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['cliente', 'estado', 'especialista']
        #form.base_fields['fechasol' ].readonly = True
        if request.user.groups.filter(name = 'Marketing').exists():
            form.base_fields['cliente'].widget.can_add_related = False
            form.base_fields['cliente'].widget.can_delete_related = False
            form.base_fields['cliente'].widget.can_change_related = False
        elif request.user.groups.filter(name = 'Director_Desarrollo').exists() and obj: 
            form.base_fields['especialista'] = forms.ModelChoiceField(queryset=User.objects.filter(groups = 6))
            form.base_fields['especialista'].widget.can_add_related = False
            form.base_fields['especialista'].widget.can_delete_related = False
            form.base_fields['especialista'].widget.can_change_related = False
        return form
    
    def exportar_solicitud_pdf(self, request:HttpRequest, queryset):              
        for solicitud in queryset:        
            base_url = os.path.join('media') + '/Solicitudes/'
            asset_url = base_url + 'Generar Solicitud Neumatico.docx'
            doc = DocxTemplate(asset_url)
            cliente = Cliente.objects.get(nombre = solicitud.cliente)
            nmlist = []
            for i in Solicitud_Neumatico_Proxy.objects.filter(numsolicitud = solicitud.numsolicitud):
                for j in Neumatico.objects.filter(descripcion = i.idproducto):
                    nmdict = {'producto': {'idproducto': j.idproducto, 'descripcion': j.descripcion, 'UM': j.UM, 'cantidad': i.cantidad}}
                    nmlist.append(nmdict)
            neumaticoo_proxy = Solicitud_Neumatico_Proxy.objects.get(numsolicitud = solicitud.numsolicitud)
            neumatico = Neumatico.objects.get(descripcion = neumaticoo_proxy.idproducto)
            nomespecialista = request.user.first_name
            apespecialista = request.user.last_name
            nomdirector = User.objects.get(username = 'director_desarrollo').first_name
            apdirector = User.objects.get(username = 'director_desarrollo').last_name
            fecha = "{:%d - %m - %Y}".format(solicitud.fechasol)
            fecha_venc = "{:%d - %m - %Y}".format(solicitud.fecha_venc)
            print(fecha)
            context = {
                'numsolicitud':solicitud.numsolicitud,
                'fecha': fecha,
                'fecha_caducidad': fecha_venc,
                'cliente': solicitud.cliente,
                'representante': cliente.representante,
                'telefono': cliente.telefono,
                'correo': cliente.correo,
                'valor_estimado': solicitud.valor_estimado,
                'observaciones': solicitud.observaciones,
                'neumaticos':nmlist,
                'nombre_usuario': nomespecialista,
                'ap_usuario': apespecialista,
                'nombre_director': nomdirector,
                'ap_director': apdirector,
            }
            doc.render(context)
            #filename = 'Solicitud de Equipos' + str(solicitud.numsolicitud) + '.pdf'
            resultFilePath = 'media/Solicitud de Neumatico' + str(solicitud.numsolicitud) + '.docx'
            doc.save(resultFilePath)
            convert(resultFilePath, 'D:\Downloads')
            os.remove(resultFilePath)
            path = 'D:\Downloads'
            webbrowser.open(path)
        msg2 = "Documentos generados correctamente"
        self.message_user(request, msg2, level=messages.SUCCESS)
    
    
    def exportar_solicitud(self, request, queryset):   
        return self.exportar_solicitud_pdf(request, queryset)
    exportar_solicitud.short_description = 'Generar Documento en PDF'
    
    def response_change(self, request:HttpRequest, obj, post_url_continue=None):
        if request.user.groups.filter(name='Director_Desarrollo').exists() and obj.estado == 'Aprobada' and obj.especialista is not None:
            for p in obj.proveedores.all().values_list('codmincex', flat=True):
                oferta_neumatico = Oferta_Neumatico()
                oferta_neumatico.solicitud_id = obj.numsolicitud
                oferta_neumatico.proveedor_id = p
                oferta_neumatico.especialista = obj.especialista
                oferta_neumatico.valor_estimado = obj.valor_estimado
                oferta_neumatico.save()
                for i in obj.neumatico.all().values():
                    q1 = Q(numsolicitud=obj.numsolicitud)
                    q2 = Q(idproducto=i['descripcion'])
                    neumatico_proxy = Solicitud_Neumatico_Proxy.objects.get(q1 | q2)
                    oferta = Oferta_Neumatico_Proxy()
                    oferta.oferta_id = oferta_neumatico.numero
                    oferta.neumatico = neumatico_proxy
                    oferta.cantidad = neumatico_proxy.cantidad
                    oferta.save()
        msg2 = "Solicitud modificada correctamente"
        self.message_user(request, msg2, level=messages.SUCCESS)
        return self.response_post_save_change(request, obj)
    
    def response_post_save_add(self, request, obj=None):
        if request.user.groups.filter(name='Especialista_Marketing').exists():
          send_mail(
                'Nueva solicitud',
                'Tiene solicitudes pendientes a aprobar',
                [User.groups.filter(name='Especialista_marketing').values_list('email', flat=True)],
                [User.groups.filter(name='Director_Desarrollo').values_list('email', flat=True)],
                fail_silently=False,
                )
        return super(Solicitud_NeumaticoAdmin, self).response_post_save_add(request, obj)
        
    def get_inline_formsets(self, request, formsets= None, inline_instances = None, obj=None):
        return super().get_inline_formsets(request, formsets, inline_instances, obj)
    
                
    #jazzmin_section_order = ('solicitud', 'Productos')
    
    def edit_link(self,obj):
        return format_html(u'<a href="/admin/%s/%s/%s/change/">Editar</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numsolicitud))
    edit_link.allow_tags = True
    edit_link.short_description = "Editar"
    
    def pending_alert(self, request):
        for sol in self:
            if sol.get_estado == 'Pendiente' and request.user.username == 'director_desarrollo':
                messages.info(request, f"La solicitud",sol.numsolicitud,"está pendiente a revisar")

"""

Clases de Baterias
    
"""
class Solicitud_Bateria_ProveedorInline(admin.StackedInline):
    model =  Solicitud_Bateria_Proveedor
    fk_name = 'numsolicitud'
    extra = 1
    fields = ('codmincex',)
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_Bateria_ProveedorInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        formfield.widget.can_add_related = False
        formfield.widget.can_change_related = False
        return formfield

class Solicitud_BateriaInline(admin.StackedInline):
    #resource_class = Solicitud_ProductoResource
    model = Solicitud_Bateria_Proxy
    fk_name = 'numsolicitud'
    extra = 0
    #readonly_fields = ('item',)
    fields = ('idproducto', 'cantidad')
    #Autocomplete_fields = ['productos', ]
    
    def formfield_for_dbfield(self, db_field, request, **kwargs):
        formfield = super(Solicitud_BateriaInline, self).formfield_for_dbfield(db_field, request, **kwargs)
        if db_field.name == 'idproducto' or db_field.name == 'proveedor':
            formfield.widget.can_add_related = False
            formfield.widget.can_change_related = False
        return formfield


@admin.register(Solicitud_Bateria)
class Solicitud_BateriaAdmin(admin.ModelAdmin):
    #resource_class = SolicitudResource
    #productos_display = Solicitud_ProductoInlineAdmin.productos_display
    add_form_template = 'solicitud_form.hrml'
    actions = ['exportar_solicitud',]
    inlines = ( Solicitud_BateriaInline, )
    list_display = (
                   'numsolicitud', 
                   'cliente', 
                   'fechasol', 
                   'estado',
                   'valor_estimado',
                   'fecha_venc',
                   'edit_link',
                   )
    
    #filter_horizontal = ('productos', )    
        
    def get_fields(self, request, obj):  
        if request.user.groups.filter(name = 'Especialista_Marketing').exists():
            return ['cliente', 'observaciones', 'valor_estimado']
        elif request.user.groups.filter(name = 'Director_Desarrollo').exists():
           #print(User.objects.filter(groups = 'Especialista_COMEX_Equipo'))
        #    for user in request.user.objects.all:
        #     self.fields['especialista'] = request.user.groups.filter(name = 'Especialista_COMEX_Equipo')
        #     print(self.fields['especialista'])
           return ['estado', 'especialista']
        return super().get_fields(request, obj)
        
    def render_change_form(self, request, context, add=False, change=False, form_url='', obj=None):
        context.update({
            'show_save': True,
            'show_save_and_continue': False,
            'show_delete': False
        })
        return super().render_change_form(request, context, add, change, form_url, obj)    
    
    def get_form(self, request:HttpRequest, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        fields = ['cliente', 'estado', 'especialista']
        #form.base_fields['fechasol' ].readonly = True
        if request.user.groups.filter(name = 'Especialista_Marketing').exists():
            form.base_fields['cliente'].widget.can_add_related = False
            form.base_fields['cliente'].widget.can_delete_related = False
            form.base_fields['cliente'].widget.can_change_related = False
        elif request.user.groups.filter(name = 'Director_Desarrollo').exists() and obj: 
            form.base_fields['especialista'] = forms.ModelChoiceField(queryset=User.objects.filter(groups = 7))
            form.base_fields['especialista'].widget.can_add_related = False
            form.base_fields['especialista'].widget.can_delete_related = False
            form.base_fields['especialista'].widget.can_change_related = False
        return form
    
    def exportar_solicitud_pdf(self, request:HttpRequest, queryset):              
        for solicitud in queryset:        
            base_url = os.path.join('media') + '/Solicitudes/'
            asset_url = base_url + 'Generar Solicitud Bateria.docx'
            doc = DocxTemplate(asset_url)
            cliente = Cliente.objects.get(nombre = solicitud.cliente)
            btlist = []
            for i in Solicitud_Bateria_Proxy.objects.filter(numsolicitud = solicitud.numsolicitud):
                for j in Bateria.objects.filter(descripcion = i.idproducto):
                    btdict = {'producto': {'idproducto': j.idproducto, 'descripcion': j.descripcion, 'UM': j.UM, 'cantidad': i.cantidad}}
                    btlist.append(btdict)
            bateria_proxy = Solicitud_Bateria_Proxy.objects.get(numsolicitud = solicitud.numsolicitud)
            bateria = Bateria.objects.get(descripcion = bateria_proxy.idproducto)
            nomespecialista = request.user.first_name
            apespecialista = request.user.last_name
            nomdirector = User.objects.get(username = 'director_desarrollo').first_name
            apdirector = User.objects.get(username = 'director_desarrollo').last_name
            fecha = "{:%d - %m - %Y}".format(solicitud.fechasol)
            fecha_venc = "{:%d - %m - %Y}".format(solicitud.fecha_venc)
            print(fecha)
            context = {
                'numsolicitud':solicitud.numsolicitud,
                'fecha': fecha,
                'fecha_caducidad': fecha_venc,
                'cliente': solicitud.cliente,
                'representante': cliente.representante,
                'telefono': cliente.telefono,
                'correo': cliente.correo,
                'valor_estimado': solicitud.valor_estimado,
                'observaciones': solicitud.observaciones,
                'baterias':btlist,
                'nombre_usuario': nomespecialista,
                'ap_usuario': apespecialista,
                'nombre_director': nomdirector,
                'ap_director': apdirector,
            }
            doc.render(context)
            #filename = 'Solicitud de Equipos' + str(solicitud.numsolicitud) + '.pdf'
            resultFilePath = 'media/Solicitud de Bateria' + str(solicitud.numsolicitud) + '.docx'
            doc.save(resultFilePath)
            convert(resultFilePath, 'D:\Downloads')
            os.remove(resultFilePath)
            path = 'D:\Downloads'
            webbrowser.open(path)
        msg2 = "Documentos generados correctamente"
        self.message_user(request, msg2, level=messages.SUCCESS)
    
    
    def exportar_solicitud(self, request, queryset):   
        return self.exportar_solicitud_pdf(request, queryset)
    exportar_solicitud.short_description = 'Generar Documento en PDF'
    
    def response_change(self, request:HttpRequest, obj, post_url_continue=None):
        if request.user.groups.filter(name='Director_Desarrollo').exists() and obj.estado == 'Aprobada' and obj.especialista is not None:
            for p in obj.proveedores.all().values_list('codmincex', flat=True):
                oferta_bateria = Oferta_Bateria()
                oferta_bateria.solicitud_id = obj.numsolicitud
                oferta_bateria.proveedor_id = p
                oferta_bateria.especialista = obj.especialista
                oferta_bateria.valor_estimado = obj.valor_estimado
                oferta_bateria.save()
                for i in obj.bateria.all().values():
                    q1 = Q(numsolicitud=obj.numsolicitud)
                    q2 = Q(idproducto=i['descripcion'])
                    bateria_proxy = Solicitud_Bateria_Proxy.objects.get(q1 | q2)
                    oferta = Oferta_Bateria_Proxy()
                    oferta.oferta_id = oferta_bateria.numero
                    oferta.bateria = bateria_proxy
                    oferta.cantidad = bateria_proxy.cantidad
                    oferta.save()
        msg2 = "Solicitud modificada correctamente"
        self.message_user(request, msg2, level=messages.SUCCESS)
        return self.response_post_save_change(request, obj)
    
    def response_post_save_add(self, request, obj=None):
        if request.user.groups.filter(name='Especialista_Marketing').exists():
          send_mail(
                'Nueva solicitud',
                'Tiene solicitudes pendientes a aprobar',
                [User.groups.filter(name='Especialista_Marketing').values_list('email', flat=True)],
                [User.groups.filter(name='Director_Desarrollo').values_list('email', flat=True)],
                fail_silently=False,
                )
        return super(Solicitud_BateriaAdmin, self).response_post_save_add(request, obj)
        
        
    def get_inline_formsets(self, request, formsets= None, inline_instances = None, obj=None):
        return super().get_inline_formsets(request, formsets, inline_instances, obj)
    
                
    #jazzmin_section_order = ('solicitud', 'Productos')
    
    def edit_link(self,obj):
        return format_html(u'<a href="/admin/%s/%s/%s/change/">Detalles</a>' % (
             obj._meta.app_label, obj._meta.model_name, obj.numsolicitud))
    edit_link.allow_tags = True
    edit_link.short_description = "Detalles"