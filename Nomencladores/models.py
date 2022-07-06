# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from email.policy import default
import os
#from pyexpat import model
from random import choices
from sqlite3 import Date
from django.db import models
from datetime import date, datetime, timedelta
from tabnanny import verbose
from django.db import models
from operator import contains
from django.utils.translation import gettext as _
from django.core.exceptions import ValidationError
from numpy import blackman, save
from .validators import UnicodenameValidator
from django.utils import timezone
from Nomencladores.validators import UnicodenameValidator, UnicodeCodeValidator, REEUPValidator, UnicodProveedorValidator, UnicodePersonNameValidator
from django import forms
from django.utils.text import slugify
from django.utils import timezone

"""
Clase País
    
"""
def codigopais_validator(codigopais):
    for i in codigopais:
        if not i.isalpha() or i.islower():
            raise ValidationError(_('%(codigopais)s no puede contener números, ni caracteres especiales y debe ser mayúsculas'), params={'codigopais': codigopais},)

def nombre_validator(nompais):
    for i in nompais:
        if not i.isalpha()  :
            raise ValidationError(_('%(nompais)s no puede contener números ni caracteres especiales y debe comenzar en mayúsculas'), params={'nompais': nompais},)


class Pais(models.Model):
    
    codigopais = models.CharField(primary_key=True, max_length=20, validators=[codigopais_validator], verbose_name = 'Código')
    nompais = models.CharField(max_length=100, validators=[nombre_validator], verbose_name='Nombre')

    class Meta:
        managed = True
        verbose_name = _('País')
        verbose_name_plural = _('Países')
        db_table = 'pais'
        
    def __str__(self):
        return '{}'.format(self.nompais)

    
"""
Clase Provincia 
    
"""
def nombre_validator(nombre):
    for i in nombre:
        if i.isnumeric():
            raise ValidationError(_('%(nombre)s no puede contener números ni caracteres especiales'), params={'nombre': nombre},)
        
class  Provincia(models.Model):
    codigoprovincia = models.CharField(max_length=3, primary_key=True, verbose_name='Abreviatura', validators=[nombre_validator])
    nombre = models.CharField(max_length=100, validators=[nombre_validator])
    capital =  models.CharField(max_length=100, validators=[nombre_validator])

    class Meta:
        managed = True
        verbose_name = _('Provincia')
        verbose_name_plural = _('Provincias')
        db_table = 'provincia'
        
    def __str__(self):
        return '{}'.format(self.nombre)

"""
Clase Cliente
    
"""
        
def nombre_validator(nombre):
    for i in nombre:
        if i.isnumeric():
            raise ValidationError(_('%(nombre)s no puede comenzar con números'), params={'nombre': nombre},)
       
def validate_telefono(telefono):
    if telefono <= 0 or telefono > 99999999:
        raise ValidationError(
        _('%(telefono)s es incorrecto'),
        params={'telefono': telefono},
        )
                
class Empresa(models.Model):
    reeup = models.CharField(max_length=11, primary_key=True, validators=[REEUPValidator.reeup_validator], verbose_name='Código REEUP')
    nombre = models.CharField(max_length=100, unique=True, null=False, validators=[UnicodenameValidator, nombre_validator], verbose_name='Nombre')
    siglas = models.CharField(max_length=15, unique=True, null=False, validators=[UnicodenameValidator, nombre_validator], verbose_name='Siglas')
    direccion = models.CharField(max_length=100, null=False, verbose_name='Dirección')
    correo = models.EmailField(verbose_name='Correo electrónico', unique=True)
    telefono = models.IntegerField(unique=True, validators=[validate_telefono], verbose_name='Teléfono')
    
    class Meta:
        abstract = True
    
class Ministerio(Empresa):
    
    class Meta:
        managed = True
        db_table = 'ministerio'
        verbose_name = ('Ministerio')
        verbose_name_plural = ('Ministerios')

    def __str__(self):
        return '{}'.format(self.nombre)

class OSDE(Empresa):
    ministerio = models.ForeignKey(Ministerio, on_delete=models.PROTECT, null=False, verbose_name='Ministerio')
    
    class Meta:
        managed = True
        db_table = 'OSDE'
        verbose_name = ('OSDE')
        verbose_name_plural = ('OSDE')

    def __str__(self):
        return '{}'.format(self.siglas)
        
def validate_representante(representante):
    for i in representante:
        if i.isnumeric():
            raise ValidationError(_('%(representante)s solo puede contener letras'), params={'representante': representante},)

def fecha_contrato(fecha_contrato):
     if fecha_contrato and timezone.now():
        delta = timezone.timedelta(days=3)
        if fecha_contrato <  timezone.now() - delta:
            raise ValidationError('La fecha del Contrato no puede ser 3 días anteriores a la fecha actual')
        elif fecha_contrato > timezone.now() + delta:
            raise ValidationError('La fecha del Contrato no puede ser 3 días posteriores a la fecha actual') 

def fecha_caducidad_cliente():
    delta = timedelta(days=365)
    fecha_caducidad = timezone.now() + delta
    return fecha_caducidad

class Cliente(Empresa):
    
    delta = timezone.timedelta(days=365) # create a timedelta object

    person_name_validator = UnicodePersonNameValidator()
    
    OSDE = models.ForeignKey(OSDE, models.DO_NOTHING, null=False, default='GEDIC')
    codigoprovincia = models.ForeignKey(Provincia, on_delete=models.PROTECT, db_column='codigoprovincia', default='HB', verbose_name='Provincia')
    representante = models.CharField(max_length=40, null=False, validators=[person_name_validator], verbose_name='Representante')
    fecha_contrato = models.DateTimeField(default = timezone.now, validators=[fecha_contrato])
    fecha_caducidad = models.DateTimeField(null = True, blank= True, default= fecha_caducidad_cliente, verbose_name='Caducidad del Contrato')
    activo = models.BooleanField(default=False)
    
    class Meta:
        managed = True
        db_table = 'cliente'

    def __str__(self):
        return '{}'.format(self.nombre)

"""
Clase Marca
    
"""
class Marca(models.Model):
   
    codigomarca = models.AutoField(primary_key=True, verbose_name='Código')
    nommarca = models.CharField(max_length=30, unique=True,verbose_name='Nombre')
    pais = models.ForeignKey(Pais, on_delete=models.PROTECT, db_column='codigopais', verbose_name='País')
    activa = models.BooleanField(default=False)

    class Meta:
        managed = True
        verbose_name = _('Marca')
        verbose_name_plural = _('Marcas')
        db_table = 'marca'
        
    def __str__(self):
        return '{}'.format(self.nommarca)

"""
Clase abstracta Producto
    
"""
def codigo_validator(codigoum):
    for i in codigoum:
        if not i.isalpha():
            raise ValidationError(_('%(codigoum)s solo puede contener letras'), params={'codigoum': codigoum},)
        
def descripcion_validator(descripcionum):
    for i in descripcionum:
        if not i.isalpha():
            raise ValidationError(_('%(descripcionum)s solo puede contener letras'), params={'descripcionum': descripcionum},)
        
class UM(models.Model):
    codigoum = models.CharField(max_length=5, primary_key=True, validators=[codigo_validator], verbose_name='Código')
    descripcionum = models.CharField(max_length=10, unique=True, validators=[descripcion_validator], verbose_name='Descripción')
    
    class Meta:
        verbose_name = _('Unidad de Medida')
        verbose_name_plural = _('Unidades de Medida')
        managed = True
        db_table = 'um'
        
    def __str__(self):
        return '{}'.format(self.descripcionum)


class Producto(models.Model):
    
    desc_validator = UnicodenameValidator

    
    idproducto = models.CharField(max_length=50, primary_key=True, verbose_name = 'Código')
    descripcion = models.CharField(max_length=50, verbose_name = 'Descripción', validators = [desc_validator])
    UM = models.ForeignKey(UM, on_delete=models.PROTECT, db_column='codigoum', null= False)
    marca = models.ForeignKey(Marca, on_delete=models.PROTECT, db_column='codigomarca', verbose_name='Marca')
    activo = models.BooleanField(default=False)
    
    class Meta:
        abstract = True
        
    def __str__(self):
        return '{}'.format(self.descripcion)

"""
Clase Equipo.
    
"""
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
   
"""
Clase Pieza
    
"""
class PPA(Producto):
    
    equipo = models.ManyToManyField(Equipo, verbose_name='Equipos')

    class Meta:
        verbose_name = _('Pieza')
        verbose_name_plural = _('Piezas')
        managed = True
        db_table = 'ppa'
        
    def __str__(self):
        return '{}'.format( self.descripcion)

"""
Clase Neumatico
    
""" 
def validate_diametro(diametro):
    if diametro < 0:
        raise ValidationError('El diámetro no puede ser negativo')


def validate_grosor(grosor):
    if grosor < 0:
        raise ValidationError('El grosor no puede ser negativo')

class Neumatico(Producto):
    diametro = models.FloatField(
        max_length=4,
        validators=[validate_diametro]
    )
    
    grosor = models.FloatField(
        max_length=4,
        validators=[validate_grosor]
    )

    class Meta:
        verbose_name = _('Neumático')
        verbose_name_plural = _('Neumáticos')
        managed = True
        db_table = 'neumatico'
        
    def __str__(self):
        return '{}'.format(self.descripcion)

"""
Clase Bateria
    
"""        
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


"""
Clase abstracta Datos
    
"""    
def validate_identificador(identificador):
    if identificador <= 0:
        raise ValidationError(
        _('%(identificador)s debe ser un valor positivo'),
        params={'identificador': identificador},
        )

def validate_telefono(telefono):
    if telefono <= 0 or telefono > 999999999999:
        raise ValidationError(
        _('%(telefono)s es incorrecto'),
        params={'telefono': telefono},
        )

class Datos(models.Model):
    identificador = models.IntegerField(primary_key=True, validators=[validate_identificador]),
    direccion = models.CharField(max_length=100, null=False, verbose_name='Dirección')
    email = models.EmailField(null=False, verbose_name='Correo Eléctronico')
    telefono = models.BigIntegerField(null=False, validators=[validate_telefono], verbose_name='Teléfono')
    contacto = models.CharField(null=False, max_length=150, verbose_name='Persona de Contacto')
    
    class Meta:
        abstract = True

"""
Clase Proveedor
    
"""
# def validate_codmincex(codmincex):
#     for i in codmincex:
#         if not i[0].isalpha() or not i[1].isalpha() or i[2] != '-' or not i[3].isnumeric

class Proveedor(models.Model):
    
    code_validator = UnicodeCodeValidator
    
    Productor = 'Productor'
    Comercializador = 'Comercializador'
    TIPO_PROVEEDOR_CHOICES = [(Productor, 'Productor'), (Comercializador, 'Comercializador')]
    name_validator = UnicodProveedorValidator()
    
    codmincex = models.CharField(
                                 max_length=7,
                                 primary_key=True, 
                                 verbose_name = 'Código MINCEX', 
                                 validators=[code_validator]
                                 )
    
    nomproveedor = models.CharField(
                                    max_length=100, 
                                    unique=True,
                                    validators=[name_validator], 
                                    verbose_name = 'Nombre'
                                    )
    
    codigopais = models.ForeignKey(
                               Pais, 
                               on_delete=models.PROTECT,
                               db_column='codigopais', 
                               verbose_name = 'País'
                               )
    
    clasificacion = models.TextField(
                                       choices = TIPO_PROVEEDOR_CHOICES,
                                       default = Productor,
                                       verbose_name = 'Clasificación'
                                    )
    
    
    marca = models.ManyToManyField(
                                Marca,
                                verbose_name='Marcas',
    )
    
    equipos = models.ManyToManyField(
                                Equipo,
                                verbose_name='Equipos',
                                blank= True
    )
    
    ppa = models.ManyToManyField(
                                PPA,
                                verbose_name='Partes, Piezas y Accesorios',
                                blank=True,
    )
    
    neumaticos = models.ManyToManyField(
                                Neumatico,
                                verbose_name='Neumáticos',
                                blank=True,
    )
    
    baterias = models.ManyToManyField(
                                Bateria,
                                verbose_name= 'Baterías',
                                blank=True,
    )
    
    activo = models.BooleanField(default=False)
    
    class Meta:
        managed = True
        verbose_name = _('Proveedor')
        verbose_name_plural = _('Proveedores')
        db_table = 'proveedor'
        unique_together = (('codmincex', 'codigopais'),)
        
    def __str__(self):
        return '{}'.format(self.nomproveedor)
    
    
"""
Clase Sucursal en Cuba
    
"""    

class Sucursal_Cuba(Datos):    
           
    carnet_trabajo = models.CharField(
                                      null=False,
                                      verbose_name='Carnet de Trabajo',
                                      max_length= 200,
                                      )
    
    codmincex = models.ForeignKey(
                                  Proveedor,
                                  on_delete=models.PROTECT,
                                  db_column='codmincex',
                                  verbose_name='Sucursal en Cuba'
    )
    
    class Meta:
        verbose_name = _('Sucursal en Cuba')
        managed = True
        db_table = 'sucursal_cuba'
        
    def __str__(self):
        return '{}'.format('Sucursal')
        
"""
Clase Casa Matriz
    
""" 
class Casa_Matriz(Datos):
    
    sitio_web = models.CharField(max_length=60, verbose_name='Página Web')
    
    proveedor = models.ForeignKey(
                                  Proveedor,
                                  on_delete=models.PROTECT,
                                  db_column='codmincex',
                                  verbose_name='Casa Matriz'
    )
     
    class Meta:
        verbose_name = _('Casa Matriz')
        verbose_name_plural = _('Casa Matriz')
        managed = True
        db_table = 'casa_matriz' 
        
    def __str__(self):
        return '{}'.format('Casa Matriz')