# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from ast import Raise
from datetime import date, datetime
from math import prod
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
from Nomencladores.models import Cliente, EspecialistaCOMEX, Pais, Producto, Proveedor
from django.contrib.auth.models import User, UserManager
from django.utils.timezone import now


class SolicitudesBackupview(models.Model):
    ids = models.BigAutoField(primary_key=True)

    class Meta:
        managed = False
        db_table = 'Solicitudes_backupview'


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
    Aprobada = 'Aprobada'
    Cancelada = 'Cancelada'
    Pendiente = 'Pendiente'
    ESTADO_CHOICES = [
                      (Aprobada, 'Aprobada'), 
                      (Cancelada, 'Cancelada'), 
                      (Pendiente, 'Pendiente')
                      ]
    numsolicitud = models.AutoField(
        primary_key=True, 
        editable = False, 
        verbose_name = 'Número'
        )
    numcontratocliente = models.ForeignKey(
        Cliente, 
        models.DO_NOTHING, 
        db_column='numcontratocliente', 
        verbose_name = 'Cliente'
        )
    productos = models.ManyToManyField(
        Producto,
        'Producto', 
        through='Solicitud_Producto',
        through_fields=('numsolicitud', 'idproducto'), 
        verbose_name = 'Productos'
        )
    fechasol = models.DateField(
        default= date.today(), 
        validators=[validate_fecha], 
        verbose_name = 'Fecha'
        )
    estado = models.CharField(
        max_length = 10, 
        null= True, 
        choices = ESTADO_CHOICES, 
        default='Pendiente'
        )
    observaciones = models.TextField(
        max_length=150, 
        null=True, 
        blank=True, 
        verbose_name='Observaciones'
        )
    idespecialista = models.ForeignKey(
        EspecialistaCOMEX, 
        models.DO_NOTHING, 
        db_column='idespecialista', 
        null=True, 
        blank=True, 
        verbose_name='Especialista COMEX'
        )
    #tag = TaggableManager()
    #@receiver(pre_delete)
    
    def get_estado(self):
       return self.estado
       
    
    def delete(self, *args, **kwargs):
        if self.aprobada == True:
            RedirectView.as_view(url=('Solicitudes/solicitud'))
            raise PermissionDenied(('No puede eliminar una solicitud aprobada'), )   
        else:
            super().delete(*args, **kwargs)
            
    
    def has_change_permission(self, *args, **kwargs):
        if self.estado == 'Aprobada' or self.estado == 'Denegada':
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
        ordering = ['numsolicitud', 'fechasol']
        
    def __str__(self):
        return '{}'.format(self.numsolicitud)
        
class Solicitud_Producto(models.Model):
    
    numsolicitud = models.ForeignKey(
        Solicitud, 
        models.CASCADE, 
        db_column='numsolicitud'
        )
    idproducto = models.ForeignKey(
        Producto, 
        models.CASCADE, 
        db_column='idproducto'
        )
    numcontratoproveedor = models.ForeignKey(
        Proveedor, 
        models.DO_NOTHING, 
        db_column='numcontratoproveedor', 
        blank=True, null=True, 
        verbose_name = 'Proveedor')
    cantidad = models.IntegerField(
        blank=False, 
        null=False, 
        validators=[validate_cantidad]
        )
    
    class Meta:
        verbose_name = 'Producto'
        verbose_name_plural = 'Productos'
        managed = True
        db_table = 'solicitud_producto'
    
    
    def __str__(self):
           return '{}'.format(self.idproducto)

class RegistroControlSolicitud(models.Model):
    Aprobada = 'Aprobada'
    Denegada = 'Denegada'
    Pendiente = 'Pendiente'
    ESTADO_CHOICES = [(Aprobada, 'Aprobada'), (Denegada, 'Denegada'), (Pendiente, 'Pendiente')]
    numsolicitud = models.AutoField(primary_key=True, editable = False, verbose_name = 'Número')
    numcontratocliente = models.ForeignKey(Cliente, models.DO_NOTHING, db_column='numcontratocliente', verbose_name = 'Cliente')
    idproducto = models.ForeignKey(Producto, models.DO_NOTHING, db_column='idproducto', verbose_name = 'Producto')
    fechasol = models.DateField(default= date.today(), validators=[validate_fecha], verbose_name = 'Fecha')
    numcontratoproveedor = models.ForeignKey(Proveedor, models.DO_NOTHING, db_column='numcontratoproveedor', blank=True, null=True, verbose_name = 'Proveedor')
    cantidad = models.IntegerField(blank=False, null=False, validators=[validate_cantidad])
    estado = models.CharField(max_length = 10, null= True, choices = ESTADO_CHOICES, default='Pendiente')
    
    
    class Meta:
        managed = False
        db_table = 'registro_control_solicitud'
        verbose_name = ('Registro de Solicitud')
        verbose_name_plural = ('Registro de Solicitudes')
        
        
    def save(self, request, object = None):
        return super().save()