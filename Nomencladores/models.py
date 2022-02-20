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
    
    numcontratocliente = models.OneToOneField('ContratoCliente', models.DO_NOTHING, db_column='numcontratocliente', primary_key=True, verbose_name = 'Numero de Contrato' )
    nomcliente = models.CharField(max_length=100, validators=[name_validator], verbose_name = 'Nombre')
    OSDE = models.CharField(max_length=45, validators=[name_validator],)

    class Meta:
        managed = False
        db_table = 'cliente'

    def __str__(self):
        return '{}'.format(self.nomcliente)

def validate_vigencia(vigencia):
    if vigencia < date.year('2010'):
        raise ValidationError(
            _('%(vigencia)s no es correcta'),
            params={'vigencia': vigencia},
        )

def validate_contrato(numcontratoproveedor):
    if numcontratoproveedor < 20220000 or numcontratoproveedor > 20229999:
        raise ValidationError(
        _('%(numcontratoproveedor)s debe ser un valor entre 20220000 o 20229999'),
        params={'numcontratoproveedor': numcontratoproveedor},
         )    

class ContratoCliente(models.Model):
    numcontratocliente = models.BigIntegerField(primary_key=True, validators = [validate_contrato], verbose_name = 'Numero de Contrato')

    
    class Meta:
        verbose_name = _('Contrato de Cliente')
        verbose_name_plural = _('Contratos de Clientes')
        managed = False
        db_table = 'contrato_cliente'

    def __str__(self):
        return '{}'.format(self.numcontratocliente)
    
def validate_contrato(numcontratoproveedor):
    if numcontratoproveedor < 20220000 or numcontratoproveedor > 20229999:
        raise ValidationError(
        _('%(numcontratoproveedor)s debe ser un valor entre 20220000 o 20229999'),
        params={'numcontratoproveedor': numcontratoproveedor},
         )    

class ContratoProveedor(models.Model):
    numcontratoproveedor = models.BigIntegerField(primary_key=True, validators= [validate_contrato], verbose_name = 'Numero de Contrato')
    

    class Meta:
        verbose_name = _('Contrato de Proveedor')
        verbose_name_plural = _('Contratos de Proveedores')
        managed = False
        db_table = 'contrato_proveedor'
    
    def __str__(self):
        return '{}'.format(self.numcontratoproveedor)

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
    
class ProductoForm(forms.ModelForm):
    class meta:
        model = Producto
        
    productos = forms.ModelMultipleChoiceField(queryset = Producto.objects.all())
    cantidad = models.IntegerField(blank=True, null=True)
    observaciones = models.TextField(blank=True, null= True, max_length=50)
    def __init__(self, *args, **kwargs):
        super(ProductoForm, self).__init__(*args, **kwargs)
        if self.instance:
            self.fields['productos'].initial = self.instance.producto_set.all()
        
def upload_to(instance, filename):
    filename_base, filename_ext = os.path.splitext(filename)
    return "proveedores/%s--%s%s" % (
    slugify(instance.nomproveedor),
    filename_ext.lower(),
)

    
class Proveedor(models.Model):
    
    name_validator = UnicodenameValidator()
    
    numcontratoproveedor = models.OneToOneField(ContratoProveedor, models.DO_NOTHING, db_column='numcontratoproveedor', primary_key=True, verbose_name = 'Numero de Contrato')
    nomproveedor = models.CharField(max_length=45, validators=[name_validator], verbose_name = 'Nombre')
    idpais = models.ForeignKey(Pais, models.DO_NOTHING, db_column='idpais', verbose_name = 'País')
   # idproducto = models.ForeignKey(Producto, models.DO_NOTHING, db_column='idproducto', verbose_name='Producto')

    class Meta:
        managed = False
        verbose_name = _('Proveedor')
        verbose_name_plural = _('Proveedores')
        db_table = 'proveedor'
        
    def __str__(self):
        
        return "%s - %s" % '{}'.format(self.nomproveedor)

