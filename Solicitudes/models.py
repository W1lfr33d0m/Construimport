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
from Nomencladores.models import Cliente, Pais, Proveedor, Producto, Equipo, PPA, Neumatico, Bateria 
from COMEX.models import EspecialistaCOMEX
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
    
    Equipo = 'Equipo'
    PPA = 'Partes, piezas y accesorios'
    Bateria = 'Batería'
    Neumatico = 'Neumático'
    TIPO_CHOICES = [
                    (Equipo, 'Equipo'), 
                    (PPA, 'Partes, piezas y accesorios'), 
                    (Bateria, 'Batería'),
                    (Neumatico, 'Neumático'),
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
    
    valor_estimado = models.FloatField(
        max_length= 10,
        null= False,
        verbose_name= 'Valor Estimado',
        )
    
    idespecialista = models.ForeignKey(
        EspecialistaCOMEX, 
        models.DO_NOTHING, 
        db_column='idespecialista', 
        null=True, 
        blank=True, 
        verbose_name='Especialista COMEX'
        )
    
    
    class Meta:
        abstract = True
        app_label = ('Solicitudes')
        verbose_name = _('Solicitud')
        verbose_name_plural = _('Solicitudes')
        managed = False
        db_table = 'solicitud'
        unique_together = (('numsolicitud', 'numcontratocliente'),)
        ordering = ['numsolicitud', 'fechasol']
        
    def __str__(self):
        return '{}'.format(self.numsolicitud)
        
class Solicitud_Equipo(Solicitud):
    
    equipo = models.ForeignKey(
        Equipo,
        models.CASCADE,
        db_column='idproducto'
    )

    proveedores = models.ManyToManyField(
        Proveedor,
        through='Solicitud_Equipo_Proveedor',
        verbose_name='Proveedores'
    )

    class Meta:
        verbose_name = _('Equipo')
        verbose_name_plural = _('Equipos')
        managed = False
        db_table = 'solicitud_equipo'
        
    def __str__(self):
        return '{}'.format(self.numsolicitud)
       
class Solicitud_PPA(Solicitud):
    
    ppa = models.ManyToManyField(
        PPA,
        through= 'Solicitud_PPA_proxy'
    )
    
    proveedores = models.ManyToManyField(
        Proveedor,
        through='Solicitud_PPA_Proveedor',
        verbose_name='Proveedores'
    )
    
    class Meta:
        verbose_name = _('Partes, Piezas y Accesorios')
        verbose_name_plural = _('Partes, Piezas y Accesorios')
        managed = False
        db_table = 'solicitud_ppa'
        
    def __str__(self):
        return '{}'.format(self.numsolicitud)
    
    
class Solicitud_Neumatico(Solicitud):
    
    neumatico = models.ManyToManyField(
        Neumatico,
        through= 'Solicitud_Neumatico_Proxy'
    )
    
    proveedores = models.ManyToManyField(
        Proveedor,
        through='Solicitud_Neumatico_Proveedor',
        verbose_name='Proveedores'
    )
    
    class Meta:
        verbose_name = _('Neumático')
        verbose_name_plural = _('Neumáticos')
        managed = False
        db_table = 'solicitud_neumatico'
    
    def __str__(self):
        return '{}'.format(self.numsolicitud)
    
    
class Solicitud_Bateria(Solicitud):
    
    bateria = models.ManyToManyField(
        Bateria,
        through= 'Solicitud_Bateria_Proxy'
    )
    
    proveedores = models.ManyToManyField(
        Proveedor,
        through='Solicitud_Bateria_Proveedor',
        verbose_name='Proveedores'
    )
    
    class Meta:
        verbose_name = _('Batería')
        verbose_name_plural = _('Baterías')
        managed = False
        db_table = 'solicitud_bateria'
    
    def __str__(self):
        return '{}'.format(self.numsolicitud)
    
class Solicitud_Equipo_Proxy(models.Model):
    
    numsolicitud = models.ForeignKey(
        Solicitud_Equipo, 
        models.CASCADE, 
        db_column='numsolicitud',
        )
    
    equipo = models.ForeignKey(
        Equipo, 
        models.CASCADE, 
        db_column='idproducto',
        verbose_name= 'Equipo',
        )
    
    cantidad = models.IntegerField(
        blank=False, 
        null=False, 
        validators=[validate_cantidad]
        )
    
    
    class Meta:
        verbose_name = 'Equipo'
        verbose_name_plural = 'Equipos'
        managed = True
        db_table = 'solicitud_equipo_proxy'
    
    
    def __str__(self):
           return '{}'.format(self.idproducto)


class Solicitud_PPA_Proxy(models.Model):
    
    numsolicitud = models.ForeignKey(
        Solicitud_PPA, 
        models.CASCADE, 
        db_column='numsolicitud',
        )
    
    idproducto = models.ForeignKey(
        PPA, 
        models.CASCADE, 
        db_column='idproducto',
        verbose_name= 'Producto',
        )
    
    cantidad = models.IntegerField(
        blank=False, 
        null=False, 
        validators=[validate_cantidad]
        )
    
    
    class Meta:
        verbose_name = 'Partes, Piezas y Accesorios'
        verbose_name_plural = 'Partes, Piezas y Accesorios'
        managed = True
        db_table = 'solicitud_ppa_proxy'
    
    
    def __str__(self):
           return '{}'.format(self.idproducto)
       
       
class Solicitud_Neumatico_Proxy(models.Model):
    
    numsolicitud = models.ForeignKey(
        Solicitud_Neumatico, 
        models.CASCADE, 
        db_column='numsolicitud',
        )
    
    idproducto = models.ForeignKey(
        Neumatico, 
        models.CASCADE, 
        db_column='idproducto',
        verbose_name= 'Neumático',
        )
    
    cantidad = models.IntegerField(
        blank=False, 
        null=False, 
        validators=[validate_cantidad]
        )
    
    
    class Meta:
        verbose_name = 'Neumático'
        verbose_name_plural = 'Neumáticos'
        managed = True
        db_table = 'solicitud_neumatico_proxy'
    
    
    def __str__(self):
           return '{}'.format(self.idproducto)
       
class Solicitud_Bateria_Proxy(models.Model):
    
    numsolicitud = models.ForeignKey(
        Solicitud_Bateria, 
        models.CASCADE, 
        db_column='numsolicitud',
        )
    
    idproducto = models.ForeignKey(
        Bateria, 
        models.CASCADE, 
        db_column='idproducto',
        verbose_name= 'Batería',
        )
    
    cantidad = models.IntegerField(
        blank=False, 
        null=False, 
        validators=[validate_cantidad]
        )
    
    
    class Meta:
        verbose_name = 'Batería'
        verbose_name_plural = 'Baterías'
        managed = True
        db_table = 'solicitud_bateria_proxy'
    
    
    def __str__(self):
           return '{}'.format(self.idproducto)
    

class Solicitud_Equipo_Proveedor(models.Model):
    
    numsolicitud = models.ForeignKey(
        Solicitud_Equipo, 
        models.CASCADE, 
        db_column='numsolicitud',
        )
    
    codmincex = models.ForeignKey(
        Proveedor,
        models.CASCADE,
        verbose_name = 'Proveedor',
        )
    
    class Meta:
        verbose_name = 'Proveedor'
        verbose_name_plural = 'Proveedores'
        managed = True
        db_table = 'solicitud_equipo_poveedor'
    
    def __str__(self):
           return '{}'.format(self.codmincex)


class Solicitud_PPA_Proveedor(models.Model):
        
    numsolicitud = models.ForeignKey(
        Solicitud_PPA, 
        models.CASCADE, 
        db_column='numsolicitud',
        )
    
    codmincex = models.ForeignKey(
        Proveedor,
        models.CASCADE,
        verbose_name = 'Proveedor',
        )
    
    class Meta:
        verbose_name = 'Proveedor'
        verbose_name_plural = 'Proveedores'
        managed = True
        db_table = 'solicitud_ppa_poveedor'
    
    def __str__(self):
           return '{}'.format(self.codmincex)
       
    
class Solicitud_Neumatico_Proveedor(models.Model):
    
    numsolicitud = models.ForeignKey(
        Solicitud_Neumatico, 
        models.CASCADE, 
        db_column='numsolicitud',
        )
    
    codmincex = models.ForeignKey(
        Proveedor,
        models.CASCADE,
        verbose_name = 'Proveedor',
        )
    
    class Meta:
        verbose_name = 'Proveedor'
        verbose_name_plural = 'Proveedores'
        managed = True
        db_table = 'solicitud_neumatico_poveedor'
    
    def __str__(self):
           return '{}'.format(self.codmincex)


class Solicitud_Bateria_Proveedor(models.Model):
    
    numsolicitud = models.ForeignKey(
        Solicitud_Bateria, 
        models.CASCADE, 
        db_column='numsolicitud',
        )
    
    codmincex = models.ForeignKey(
        Proveedor,
        models.CASCADE,
        verbose_name = 'Proveedor',
        )
    
    class Meta:
        verbose_name = 'Proveedor'
        verbose_name_plural = 'Proveedores'
        managed = True
        db_table = 'solicitud_bateria_poveedor'
    
    def __str__(self):
           return '{}'.format(self.codmincex)
