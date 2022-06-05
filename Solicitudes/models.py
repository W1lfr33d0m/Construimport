# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from ast import Raise
from cProfile import label
import calendar
from calendar import MONDAY, SATURDAY, SUNDAY
from datetime import date, datetime, timedelta
from math import prod
from msilib.schema import Verb
from re import T
from tabnanny import verbose
from tkinter import Widget
from django.db import models
from operator import contains
from django.dispatch import receiver
from django.http import HttpRequest, HttpResponse
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
from Nomencladores.models import *
#from COMEX.models import EspecialistaCOMEX
from django.contrib.auth.models import User, UserManager, AbstractBaseUser, AbstractUser
from django.utils.timezone import now

def validate_numsolicitud(numsolicitud):
    if numsolicitud <= 0:
        raise ValidationError(
        _('%(numsolicitud)s no es correcto'),
        params={'numsolicitud': numsolicitud},
       )
            

            
def validate_fecha(fechasol):
    if fechasol != date.today():
        raise ValidationError(
        _('%(fechasol)s debe ser un día de la semana'),
        params={'fechasol': fechasol},
        )
        
"""
Clase Abstracta de Solicitudess
    
"""
def validate_valor_estimado(valor_estimado):
    if valor_estimado <= 0 or valor_estimado > 9999999:
        raise ValidationError('Introduzca un valor mayor que cero y menor que 99999')
    

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
    
    cliente = models.ForeignKey(
        Cliente, 
        models.DO_NOTHING,
        db_column='reeup',
        verbose_name = 'Cliente'
        )
    
    fechasol = models.DateField(
        default= date.today(), 
        #validators=[validate_fecha], 
        editable=False,
        verbose_name = 'Fecha de la Solicitud'
        )
    
    estado = models.CharField(
        max_length = 10, 
        choices = ESTADO_CHOICES, 
        default='Pendiente'
        )
    
    observaciones = models.CharField(
        max_length= 50, 
        null=True, 
        blank=True, 
        verbose_name='Observaciones'
        )
    
    valor_estimado = models.FloatField(
        #max_length= 10,
        null= False,
        validators=[validate_valor_estimado],
        verbose_name= 'Valor Estimado',
        )
        
    especialista = models.ForeignKey(
        User,
        models.DO_NOTHING,
        db_column='username',
        verbose_name='Especialista COMEX',
        null=True,
    )
    
    class Meta:
        abstract = True
        app_label = ('Solicitudes')
        verbose_name = _('Solicitud')
        verbose_name_plural = _('Solicitudes')
        managed = True
        db_table = 'solicitud'
        unique_together = (('numsolicitud', 'numcontratocliente'),)
        ordering = ['numsolicitud', 'fechasol']
        
    def __str__(self):
        return '{}'.format(self.numsolicitud)   

"""
Clase de Solicitud de Equipos
    
"""

class Solicitud_Equipo(Solicitud):
    
    equipo = models.ManyToManyField(
        Equipo,
        through='Solicitud_Equipo_Proxy',
        related_name= 'Equipos'
    )

    proveedores = models.ManyToManyField(
        Proveedor,
        through='Solicitud_Equipo_Proveedor',
        related_name='Proveedores'
    )
    
    
    class Meta:
        verbose_name = _('Solicitud de Equipo')
        verbose_name_plural = _('Solicitudes de Equipos')
        managed = True
        db_table = 'solicitud_equipo'
        
    def __str__(self):
        return '{}'.format(self.numsolicitud)
        
"""
Clases para representar las relaciones de muchos a muchos.
    
"""
def validate_cantidad(cantidad):
    if cantidad <= 0 or cantidad > 5000:
        raise ValidationError('Debe ser un valor positivo y hasta 5000')

class Solicitud_Equipo_Proxy(models.Model):
    
    numsolicitud = models.ForeignKey(
        Solicitud_Equipo, 
        models.CASCADE, 
        db_column='numsolicitud',
        )
    
    idproducto = models.ForeignKey(
        Equipo, 
        models.CASCADE, 
        db_column='idproducto',
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

    

class Solicitud_Equipo_Proveedor(models.Model):
    
    numsolicitud = models.ForeignKey(
        Solicitud_Equipo, 
        models.CASCADE, 
        db_column='numsolicitud',
        )
    
    codmincex = models.ForeignKey(
        Proveedor,
        models.CASCADE,
        db_column='codmincex',
        verbose_name = 'Proveedor'
        )
    
    class Meta:
        verbose_name = 'Proveedor'
        verbose_name_plural = 'Proveedores'
        managed = True
        db_table = 'solicitud_equipo_proveedor'
    
    def __str__(self):
           return '{}'.format(self.codmincex)

"""
Clase de Solicitud Piezas
    
"""              
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
        verbose_name = _('Solicitud de Partes, Piezas y Accesorios')
        verbose_name_plural = _('Solicitudes de Partes, Piezas y Accesorios')
        managed = True
        db_table = 'solicitud_ppa'
        
    def __str__(self):
        return '{}'.format(self.numsolicitud)

"""
Clases para representar las relaciones de muchos a muchos.
    
"""

class Solicitud_PPA_Proxy(models.Model):
    
    numsolicitud = models.ForeignKey(
        Solicitud_PPA, 
        models.CASCADE, 
        db_column='numsolicitud',
        null=False,
        )
    
    idproducto = models.ForeignKey(
        PPA, 
        models.CASCADE, 
        db_column='idproducto',
        verbose_name= 'Producto',
        null=False,
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
        db_table = 'solicitud_ppa_proveedor'
    
    def __str__(self):
           return '{}'.format(self.codmincex)
       
"""
Clase de Solicitud de Neumaticos
    
"""
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
        verbose_name = _('Solicitud de Neumático')
        verbose_name_plural = _('Solicitudes de Neumáticos')
        managed = True
        db_table = 'solicitud_neumatico'
    
    def __str__(self):
        return '{}'.format(self.numsolicitud)
    
"""
Clases para representar las relaciones de muchos a muchos.
    
"""

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
        unique=True
        )
    
    class Meta:
        verbose_name = 'Proveedor'
        verbose_name_plural = 'Proveedores'
        managed = True
        db_table = 'solicitud_neumatico_proveedor'
    
    def __str__(self):
           return '{}'.format(self.codmincex)
    
"""
Clase de Solicitud de Baterias
    
"""
class Solicitud_Bateria(Solicitud):
    
    bateria = models.ManyToManyField(
        Bateria,
        through= 'Solicitud_Bateria_Proxy',
    )
    
    proveedores = models.ManyToManyField(
        Proveedor,
        through='Solicitud_Bateria_Proveedor',
        verbose_name='Proveedores',
    )
    
    class Meta:
        verbose_name = _('Solicitud de Batería')
        verbose_name_plural = _('Solicitudes de Baterías')
        managed = True
        db_table = 'solicitud_bateria'
    
    def __str__(self):
        return '{}'.format(self.numsolicitud)

"""
Clases para representar las relaciones de muchos a muchos.
    
"""           

class Solicitud_Bateria_Proxy(models.Model):
    
    numsolicitud = models.ForeignKey(
        Solicitud_Bateria, 
        models.CASCADE, 
        db_column='numsolicitud',
        null=False
        )
    
    idproducto = models.ForeignKey(
        Bateria, 
        models.CASCADE, 
        db_column='idproducto',
        verbose_name= 'Batería',
        unique=True,
        null=False
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


class Solicitud_Bateria_Proveedor(models.Model):
    
    numsolicitud = models.ForeignKey(
        Solicitud_Bateria, 
        models.CASCADE, 
        db_column='numsolicitud',
        null=False
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
        db_table = 'solicitud_bateria_proveedor'
    
    def __str__(self):
           return '{}'.format(self.codmincex)