# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
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
from Solicitudes.models import Solicitud
from django import forms


class SolicitudesBackupview(models.Model):
    id = models.BigAutoField(primary_key=True)

    class Meta:
        managed = False
        db_table = 'Solicitudes_backupview'


class AdminInterfaceTheme(models.Model):
    name = models.CharField(unique=True, max_length=50)
    active = models.BooleanField()
    title = models.CharField(max_length=50)
    title_visible = models.BooleanField()
    logo = models.CharField(max_length=100)
    logo_visible = models.BooleanField()
    css_header_background_color = models.CharField(max_length=10)
    title_color = models.CharField(max_length=10)
    css_header_text_color = models.CharField(max_length=10)
    css_header_link_color = models.CharField(max_length=10)
    css_header_link_hover_color = models.CharField(max_length=10)
    css_module_background_color = models.CharField(max_length=10)
    css_module_text_color = models.CharField(max_length=10)
    css_module_link_color = models.CharField(max_length=10)
    css_module_link_hover_color = models.CharField(max_length=10)
    css_module_rounded_corners = models.BooleanField()
    css_generic_link_color = models.CharField(max_length=10)
    css_generic_link_hover_color = models.CharField(max_length=10)
    css_save_button_background_color = models.CharField(max_length=10)
    css_save_button_background_hover_color = models.CharField(max_length=10)
    css_save_button_text_color = models.CharField(max_length=10)
    css_delete_button_background_color = models.CharField(max_length=10)
    css_delete_button_background_hover_color = models.CharField(max_length=10)
    css_delete_button_text_color = models.CharField(max_length=10)
    css = models.TextField()
    list_filter_dropdown = models.BooleanField()
    related_modal_active = models.BooleanField()
    related_modal_background_color = models.CharField(max_length=10)
    related_modal_rounded_corners = models.BooleanField()
    logo_color = models.CharField(max_length=10)
    recent_actions_visible = models.BooleanField()
    favicon = models.CharField(max_length=100)
    related_modal_background_opacity = models.CharField(max_length=5)
    env_name = models.CharField(max_length=50)
    env_visible_in_header = models.BooleanField()
    env_color = models.CharField(max_length=10)
    env_visible_in_favicon = models.BooleanField()
    related_modal_close_button_visible = models.BooleanField()
    language_chooser_active = models.BooleanField()
    language_chooser_display = models.CharField(max_length=10)
    list_filter_sticky = models.BooleanField()
    form_pagination_sticky = models.BooleanField()
    form_submit_sticky = models.BooleanField()
    css_module_background_selected_color = models.CharField(max_length=10)
    css_module_link_selected_color = models.CharField(max_length=10)
    logo_max_height = models.SmallIntegerField()
    logo_max_width = models.SmallIntegerField()

    class Meta:
        managed = False
        db_table = 'admin_interface_theme'


class Almacen(models.Model):
    idalmacen = models.BigIntegerField(primary_key=True)
    tipoalmacen = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'almacen'

class Cliente(models.Model):
    
    name_validator = UnicodenameValidator()
    
    numcontratocliente = models.OneToOneField('ContratoCliente', models.DO_NOTHING, db_column='numcontratocliente', primary_key=True)
    nomcliente = models.CharField(max_length=45, validators=[name_validator])
    OSDE = models.CharField(max_length=45, validators=[name_validator])

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

class ContratoCliente(models.Model):
    numcontratocliente = models.BigIntegerField(primary_key=True)

    
    class Meta:
        managed = False
        db_table = 'contrato_cliente'

    def __str__(self):
        return '{}'.format(self.numcontratocliente)

class ContratoProveedor(models.Model):
    numcontratoproveedor = models.BigIntegerField(primary_key=True)
    

    class Meta:
        managed = False
        db_table = 'contrato_proveedor'
    
    def __str__(self):
        return '{}'.format(self.numcontratoproveedor)

class Pais(models.Model):
    idpais = models.CharField(primary_key=True, max_length=3)
    pais = models.CharField(max_length=30)

    class Meta:
        verbose_name = _('País')
        verbose_name_plural = _('Países')
        managed = False
        db_table = 'pais'
        
    def __str__(self):
        return '{}'.format(self.pais)

def validate_cantidad(cantidad):
        if cantidad <= 0:
            raise ValidationError(
            _('%(cantidad)s debe ser un valor positivo'),
            params={'cantidad': cantidad},
             )
class Producto(models.Model):
    Pieza = 'PZ'
    Equipo = 'EQ'
    TIPO_PRODUCTO_CHOICES = [ (Pieza, 'Pieza'), (Equipo, 'Equipo')]
    U = 'U'
    SET = 'SET'
    UM = [(U, 'U'), (SET, 'SET')]
    idproducto = models.IntegerField(primary_key=True)
    nombreproducto = models.CharField(max_length=50)
    tipo = models.CharField(max_length = 5, null= False, choices = TIPO_PRODUCTO_CHOICES, default = Pieza)
    UM = models.CharField(max_length = 5, null= False, choices = UM, default = U)
    solicitud = models.ManyToOneRel(Solicitud, models.DO_NOTHING, field_name = 'Solicitud')
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
        


class Proveedor(models.Model):
    
    name_validator = UnicodenameValidator()
    
    numcontratoproveedor = models.OneToOneField(ContratoProveedor, models.DO_NOTHING, db_column='numcontratoproveedor', primary_key=True)
    nomproveedor = models.CharField(max_length=45, validators=[name_validator])
    idpais = models.ForeignKey(Pais, models.DO_NOTHING, db_column='idpais')

    class Meta:
        managed = False
        verbose_name = _('Proveedor')
        verbose_name_plural = _('Proveedores')
        db_table = 'proveedor'
        
    def __str__(self):
        return '{}'.format(self.nomproveedor)

