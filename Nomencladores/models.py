# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
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
from .validators import UnicodenameValidator
from django.utils import timezone
from Nomencladores.validators import UnicodenameValidator
from django import forms
from django.utils.text import slugify
#from Solicitudes.models import Solicitud






class Almacen(models.Model):
    idalmacen = models.BigIntegerField(primary_key=True)
    tipoalmacen = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'almacen'
        
class  Provincia(models.Model):
    idprovincia = models.CharField(max_length=3, primary_key=True, null=False, unique=True)
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
    idprovincia = models.ForeignKey(Provincia, models.CASCADE, db_column='idprovincia', verbose_name='Provincia')

    class Meta:
        managed = False
        db_table = 'cliente'

    def __str__(self):
        return '{}'.format(self.nomcliente)


class Pais(models.Model):
    idpais = models.CharField(primary_key=True, max_length=3, verbose_name = 'Código')
    pais = models.CharField(max_length=30)

    class Meta:
        verbose_name = _('País')
        verbose_name_plural = _('Países')
        managed = False
        db_table = 'pais'
        
    def __str__(self):
        return '{}'.format(self.pais)

def validate_idproducto(idproducto):
    if idproducto <= 0 or idproducto > 9999999999:
         raise ValidationError(
        _('%(idproducto)s debe ser un valor entre 20220000 o 20229999'),
        params={'idproducto': idproducto},
         )

class Producto(models.Model):
    
    desc_validator = UnicodenameValidator
    
    PPA = 'PZ'
    Equipo = 'EQ'
    Batería = 'Batería'
    Neumático = 'Neumático'
    TIPO_PRODUCTO_CHOICES = [ (PPA, 'PPA'), (Equipo, 'Equipo'), (Batería, 'Batería'), (Neumático, 'Neumático')]
    U = 'U'
    SET = 'SET'
    UM = [(U, 'U'), (SET, 'SET')]
    idproducto = models.IntegerField(primary_key=True, verbose_name = 'Código')
    nombreproducto = models.CharField(max_length=50, verbose_name = 'Descripción', validators = [desc_validator])
    tipo = models.CharField(max_length = 10, null= False, choices = TIPO_PRODUCTO_CHOICES, default = PPA)
    UM = models.CharField(max_length = 5, null= False, choices = UM, default = U)
    #solicitud = models.ManyToManyField(Solicitud, through= '', field_name = 'numsolicitud')
    
    class Meta:
        verbose_name = _('Producto')
        verbose_name_plural = _('Productos')
        managed = True
        db_table = 'producto'
        
    def __str__(self):
        return '{}'.format(self.nombreproducto)
    
def validate_numcontratoproveedor(numcontratoproveedor):
    if numcontratoproveedor <= 0 or numcontratoproveedor > 999999:
         raise ValidationError(
        _('%(numcontratoproveedor)s debe ser un valor mayor que cero y menor que 999999'),
        params={'numcontratoproveedor': numcontratoproveedor},
         )
    
class Proveedor(models.Model):
    
    name_validator = UnicodenameValidator()
    
    numcontratoproveedor = models.IntegerField(primary_key=True, verbose_name = 'Numero de Contrato', validators=[validate_numcontratoproveedor])
    nomproveedor = models.CharField(max_length=45, validators=[name_validator], verbose_name = 'Nombre')
    idpais = models.ForeignKey(Pais, models.CASCADE, db_column='idpais', verbose_name = 'País')
    productos = models.ManyToManyField(Producto, through= 'Proveedor_Producto', db_column= 'idproducto', verbose_name='Producto')

    class Meta:
        managed = True
        verbose_name = _('Proveedor')
        verbose_name_plural = _('Proveedores')
        db_table = 'proveedor'
        unique_together = (('numcontratoproveedor', 'idpais'),)
        
    def __str__(self):
        
        return '{}'.format(self.nomproveedor)
    
class Proveedor_Producto(models.Model):
    
    numcontratoproveedor = models.ForeignKey(Proveedor, models.CASCADE, db_column='numcontratoproveedor', verbose_name = 'Proveedores')
    idproducto = models.ForeignKey(Producto, models.CASCADE, db_column='idproducto', verbose_name = 'Productos')
    
    class Meta:
        managed = True
        db_table = 'proveedor_producto'


class EspecialistaCOMEX(models.Model):
    
    PPA = 'PZ'
    Equipo = 'EQ'
    CATEGORIA_CHOICES = [(PPA, 'PPA'), (Equipo, 'Equipo')]
    name_validator = UnicodenameValidator()
    
    idespecialista = models.IntegerField(primary_key=True, verbose_name='Especialista')
    nombre = models.CharField(max_length=45, validators=[name_validator], verbose_name = 'Nombre')
    apellidos = models.CharField(max_length=45, validators=[name_validator], verbose_name = 'Apellidos')
    categoria = models.CharField(max_length = 10, null= False, choices = CATEGORIA_CHOICES, default = PPA)
    
    class Meta:
        managed = True
        verbose_name = _('Especialista COMEX')
        verbose_name_plural = _('Especialistas COMEX')
        db_table = 'especialista_comex'
        
    def __str__(self):
        
        return '{}'.format(self.nombre)

