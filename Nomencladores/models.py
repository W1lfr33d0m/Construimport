# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
import os
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






class Almacen(models.Model):
    idalmacen = models.BigIntegerField(primary_key=True)
    tipoalmacen = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'almacen'

class Cliente(models.Model):
    
    name_validator = UnicodenameValidator()
    
    numcontratocliente = models.IntegerField(primary_key=True, verbose_name = 'Numero de Contrato' )
    nomcliente = models.CharField(max_length=100, validators=[name_validator], verbose_name = 'Nombre')
    OSDE = models.CharField(max_length=45, validators=[name_validator],)

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
    #solicitud = models.ManyToOneRel(Solicitud, models.DO_NOTHING, field_name = 'Solicitud')
    class Meta:
        verbose_name = _('Producto')
        verbose_name_plural = _('Productos')
        managed = True
        db_table = 'producto'
        
    def __str__(self):
        return '{}'.format(self.nombreproducto)
    
class Proveedor(models.Model):
    
    name_validator = UnicodenameValidator()
    
    numcontratoproveedor = models.IntegerField(primary_key=True, verbose_name = 'Numero de Contrato')
    nomproveedor = models.CharField(max_length=45, validators=[name_validator], verbose_name = 'Nombre')
    idpais = models.ForeignKey(Pais, models.CASCADE, db_column='idpais', verbose_name = 'País')

    class Meta:
        managed = False
        verbose_name = _('Proveedor')
        verbose_name_plural = _('Proveedores')
        db_table = 'proveedor'
        unique_together = (('numcontratoproveedor', 'idpais'),)
        
    def __str__(self):
        
        return '{}'.format(self.nomproveedor)

