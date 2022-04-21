# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from email.policy import default
import os
from pyexpat import model
from random import choices
from sqlite3 import Date
from django.db import models
from datetime import date, datetime
from tabnanny import verbose
from django.db import models
from operator import contains
from django.utils.translation import gettext as _
from django.core.exceptions import ValidationError
from numpy import save
from .validators import UnicodenameValidator
from django.utils import timezone
from Nomencladores.validators import UnicodenameValidator, UnicodeCodeValidator
from django import forms
from django.utils.text import slugify

class  Provincia(models.Model):
    codigoprovincia = models.CharField(max_length=3, primary_key=True, verbose_name='Abreviatura')
    nombre = models.CharField(max_length=100)
    capital =  models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        managed = True
        verbose_name = _('Provincia')
        verbose_name_plural = _('Provincias')
        db_table = 'provincia'
        
    def __str__(self):
        return '%s' % self.nombre    

class Cliente(models.Model):
    
    name_validator = UnicodenameValidator()
    
    numcontratocliente = models.IntegerField(primary_key=True, verbose_name = 'Numero de Contrato' )
    nomcliente = models.CharField(max_length=100, validators=[name_validator], verbose_name = 'Nombre')
    OSDE = models.CharField(max_length=45, validators=[name_validator],)
    provincia = models.ForeignKey(Provincia, models.CASCADE, db_column='provincia', verbose_name='Provincia')

    class Meta:
        managed = True
        db_table = 'cliente'

    def __str__(self):
        return '{}'.format(self.nomcliente)


class Pais(models.Model):
    codigopais = models.CharField(primary_key=True, max_length=3, verbose_name = 'Código')
    nompais = models.CharField(max_length=30, verbose_name='Nombre')

    class Meta:
        managed = True
        verbose_name = _('País')
        verbose_name_plural = _('Países')
        db_table = 'pais'
        
    def __str__(self):
        return '{}'.format(self.nompais)


class Producto(models.Model):
    
    desc_validator = UnicodenameValidator

    U = 'Unidad'
    SET = 'SET'
    MT = 'Metro'
    UM = [(U, 'U'), (SET, 'SET'), ('MT', 'Metro')]
    idproducto = models.IntegerField(primary_key=True, verbose_name = 'Código')
    descripcion = models.CharField(max_length=50, verbose_name = 'Descripción', validators = [desc_validator])
    UM = models.CharField(max_length = 15, null= False, choices = UM, default = U)
    marca = models.CharField(max_length=30 )
    #solicitud = models.ManyToManyField(Solicitud, through= '', field_name = 'numsolicitud')
    
    class Meta:
        abstract = True
        verbose_name = _('Producto')
        verbose_name_plural = _('Productos')
        managed = True
        db_table = 'producto'
        
    def __str__(self):
        return '{}'.format(self.descripcion)

class Equipo(Producto):
        
    modelo = models.CharField(
        max_length=30
    )
    
    class Meta:
        verbose_name = _('Equipo')
        verbose_name_plural = _('Equipos')
        managed = True
        db_table = 'equipo'
        
    def __str__(self):
        return '{}'.format(self.descripcion)
    
class PPA(Producto):
    
    #equipo = models.ForeignKey(Equipo, models.CASCADE, db_column='idproducto')

    class Meta:
        verbose_name = _('Pieza')
        verbose_name_plural = _('Piezas')
        managed = True
        db_table = 'ppa'
        
    def __str__(self):
        return '{}'.format(self.descripcion)
    
class Neumatico(Producto):
    diametro = models.FloatField(
        max_length=4
    )
    
    grosor = models.FloatField(
        max_length=4
    )

    class Meta:
        verbose_name = _('Neumático')
        verbose_name_plural = _('Neumáticos')
        managed = True
        db_table = 'neumatico'
        
    def __str__(self):
        return '{}'.format(self.descripcion)
        
class Bateria(Producto):
    voltaje = models.FloatField(
        max_length=4
    )
    
    amperaje = models.FloatField(
        max_length= 4
    )

    class Meta:
        verbose_name = _('Batería')
        verbose_name_plural = _('Baterías')
        managed = True
        db_table = 'bateria'
        
    def __str__(self):
        return '{}'.format(self.descripcion)
    
class Datos(models.Model):
    identificador = models.IntegerField(primary_key=True, max_length=4),
    direccion = models.CharField(max_length=100, verbose_name='Dirección')
    email = models.EmailField(verbose_name='Correo Eléctronico')
    telefono = models.BigIntegerField(verbose_name='Teléfono')
    contacto = models.CharField(max_length=150, verbose_name='Persona de Contacto')
    
    class Meta:
        abstract = True

class Proveedor(models.Model):
    
    code_validator = UnicodeCodeValidator
    
    Productor = 'Productor'
    Comercializador = 'Comercializador'
    TIPO_PROVEEDOR_CHOICES = [(Productor, 'Productor'), (Comercializador, 'Comercializador')]
    name_validator = UnicodenameValidator()
    
    codmincex = models.CharField(
                                 max_length=8,
                                 primary_key=True, 
                                 verbose_name = 'Código MINCEX', 
                                 validators=[code_validator]
                                 )
    nomproveedor = models.CharField(
                                    max_length=45, 
                                    validators=[name_validator], 
                                    verbose_name = 'Nombre'
                                    )
    codigopais = models.ForeignKey(
                               Pais, 
                               models.CASCADE, 
                               db_column='codigopais', 
                               verbose_name = 'País'
                               )
    

    clasificacion = models.TextField(
                                       choices = TIPO_PROVEEDOR_CHOICES,
                                       default = Productor,
                                       verbose_name = 'Clasificación'
                                    )
    
    
    class Meta:
        managed = True
        verbose_name = _('Proveedor')
        verbose_name_plural = _('Proveedores')
        db_table = 'proveedor'
        unique_together = (('codmincex', 'codigopais'),)
        
    def __str__(self):
        
        return '{}'.format(self.nomproveedor)
    
class Sucursal_Cuba(Datos):
    
    
           
    carnet_trabajo = models.CharField(
                                      verbose_name='Carnet de Trabajo',
                                      max_length= 200,
                                      )
    
    codmincex = models.ForeignKey(
                                  Proveedor,
                                  models.CASCADE,
                                  db_column='codmincex',
                                  verbose_name='Sucursal en Cuba'
    )
    
    class Meta:
        verbose_name = _('Sucursal en Cuba')
        managed = True
        db_table = 'sucursal_cuba'
        
    
class Casa_Matriz(Datos):
    
    
    sitio_web = models.CharField(max_length=60, verbose_name='Página Web')
    
    proveedor = models.ForeignKey(
                                  Proveedor,
                                  models.CASCADE,
                                  db_column='codmincex',
                                  verbose_name='Casa Matriz'
    )
     
    class Meta:
        verbose_name = _('Casa Matriz')
        managed = True
        db_table = 'casa_matriz' 