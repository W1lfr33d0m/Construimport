# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from ast import Raise
from datetime import date, datetime
from re import T
from tabnanny import verbose
from tkinter import Widget
from django.db import models
from operator import contains
from django.dispatch import receiver
from django.http import HttpResponse
from django.shortcuts import redirect
from django.utils.translation import gettext as _
from django.core.exceptions import ValidationError, PermissionDenied
from numpy import array
from .validators import UnicodenameValidator
from django.utils import timezone
from django import forms
from django.urls import reverse
import shutil
from django.db.models.signals import pre_delete 
from django.dispatch import receiver
from django.views.generic.base import RedirectView
#from taggit.managers import TaggableManager
from Nomencladores.models import Cliente, Pais, Producto, Proveedor
from django.contrib.auth.models import User, UserManager


class SolicitudesBackupview(models.Model):
    id = models.BigAutoField(primary_key=True)

    class Meta:
        managed = False
        db_table = 'Solicitudes_backupview'



class RegistroControlSolicitud(models.Model):
    numsolicitud = models.IntegerField(primary_key=True)
    numcontratocliente = models.IntegerField()
    numcontratoproveedor = models.IntegerField()
    fechasol = models.DateField()

    class Meta:
        managed = False
        db_table = 'registro_control_solicitud'
        

def validate_numsolicitud(numsolicitud):
        if numsolicitud <= 0:
            raise ValidationError(
            _('%(numsolicitud)s no es correcto'),
            params={'numsolicitud': numsolicitud},
        )

def validate_cantidad(cantidad):
        if cantidad <= 0 or cantidad > 9999:
            raise ValidationError(
            _('%(cantidad)s debe ser un valor mayor que cero y menor de 10000'),
            params={'cantidad': cantidad},
             )            

def validate_fecha(fechasol):
        if not fechasol == date.today() or not date.weekday(fechasol):
            raise ValidationError(
            _('%(fechasol)s la fecha debe ser del día actual'),
            params={'fechasol': fechasol},
             )            

class Solicitud(models.Model):
    numsolicitud = models.AutoField(primary_key=True, editable = True, verbose_name = 'Número')
    numcontratocliente = models.ForeignKey(Cliente, models.DO_NOTHING, db_column='numcontratocliente', verbose_name = 'Cliente')
    idproducto =models.ForeignKey(Producto, models.DO_NOTHING, db_column='idproducto', verbose_name = 'Producto')
    fechasol = models.DateField(default= date.today(), validators=[validate_fecha], verbose_name = 'Fecha')
    numcontratoproveedor = models.ForeignKey(Proveedor, models.DO_NOTHING, db_column='numcontratoproveedor', blank=True, null=True, verbose_name = 'Proveedor')
    cantidad = models.IntegerField(blank=False, null=False, validators=[validate_cantidad])
    aprobada = models.BooleanField( default = False)
    #tag = TaggableManager()
    #@receiver(pre_delete)
    
    def delete(self, *args, **kwargs):
        if self.aprobada == True:
            RedirectView.as_view(url=('Solicitudes/solicitud'))
            raise PermissionDenied(('No puede eliminar una solicitud aprobada'), )   
        else:
            super().delete(*args, **kwargs)
            
    
    def change(self, *args, **kwargs):
        if self.aprobada == True:
            return False
        else:
            super().edit(*args, **kwargs)
        
    class Meta:
        app_label = ('Solicitudes')
        verbose_name = _('Solicitud')
        verbose_name_plural = _('Solicitudes')
        managed = False
        db_table = 'solicitud'
        unique_together = (('numsolicitud', 'numcontratocliente'),)
        
