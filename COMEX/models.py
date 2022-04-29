from pydoc import cli
import re
from signal import raise_signal
from tabnanny import verbose
from tracemalloc import start
from unicodedata import name
from django.db import models
from django.db.models import ManyToManyField, ManyToManyRel, Model
from django.utils.translation import gettext as _
from django.core.exceptions import ValidationError
from Nomencladores.validators import UnicodenameValidator
from Nomencladores.models import *
import calendar
from calendar import MONDAY, SATURDAY, SUNDAY
from datetime import date, datetime, timedelta
from django.apps import apps
#from Nomencladores.models import Cliente, Proveedor
#from django.db.models import apps
#Solicitud_Equipo = apps.get_model('Solicitud', 'Solicitud_Producto')
from Solicitudes.models import Solicitud, Solicitud_Bateria_Proveedor, Solicitud_Equipo, Solicitud_Equipo_Proveedor, Solicitud_Neumatico_Proveedor, Solicitud_PPA_Proveedor, Solicitud_Neumatico_Proxy, Solicitud_Bateria_Proxy, Solicitud_Equipo_Proxy, Solicitud_PPA_Proxy
from django.contrib.auth.models import User, Group 


#def validate_especialista(idespecialista):
#    if .group._user_has_module_perms('COMEX') == False:
#        raise ValidationError(
#        _('%(idespecialista)s debe ser un valor entre 20220000 o 20229999'),
#        params={'idespecialista': idespecialista},
#        ) 

#def filter_especialista(idespecialista):
#   if idespecialista.user.groups.filter(name = 'Especialista_COMEX').exists():
#       return True

class EspecialistaCOMEX(models.Model):
    
    PPA = 'PZ'
    Equipo = 'Equipo'
    Bateria = 'Batería'
    Neumatico = 'Neumático'
    CATEGORIA_CHOICES = [(PPA, 'PPA'), (Equipo, 'Equipo'), (Bateria, 'Batería'), (Neumatico, 'Neumático') ]
    name_validator = UnicodenameValidator()
    
    
    idespecialista = models.OneToOneField(
                                          User, 
                                          models.DO_NOTHING, 
                                          primary_key=True, 
                                          db_column='idespecialista', 
                                          verbose_name='Usuario',
                                          #validators=[filter_especialista]
                                          )
    categoria = models.CharField(
                                 max_length = 10, 
                                 null= False, 
                                 choices = CATEGORIA_CHOICES, 
                                 default = PPA
                                 )
    
    class Meta:
        managed = True
        verbose_name = _('Especialista COMEX')
        verbose_name_plural = _('Especialistas COMEX')
        db_table = 'especialista_comex'
        
    def __str__(self):
        
        return '{}'.format(self.idespecialista)
    
class Oferta(models.Model):
    
    Aprobada = 'Aprobada'
    Cancelada = 'Cancelada'
    Pendiente = 'Pendiente'
    ESTADO_CHOICES = [
                      (Aprobada, 'Aprobada'), 
                      (Cancelada, 'Cancelada'), 
                      (Pendiente, 'Pendiente')
                      ]
    
    Treinta = '30 Días'
    Sesenta = '60 Días'
    
    VALIDEZ_CHOICES = [
                       (Treinta, '30 Días'),
                       (Sesenta, '60 Días')
                      ]
    
    numero = models.IntegerField(
        primary_key=True,
        verbose_name='Número'
    )
            
    fecha = models.DateField(
        default= date.today(), 
        verbose_name = 'Fecha de la Oferta',
        blank=True
    )
    
    pais = models.ForeignKey(
        Pais,
        models.DO_NOTHING,
        verbose_name='País de Origen de la carga',
        db_column='idpais',
        blank=True
    )
    
    proveedor = models.ForeignKey(
        Proveedor,
        models.DO_NOTHING,
        db_column='codmincex',
        verbose_name='Proveedor',
        blank=True
    )
    
    validez = models.CharField(
        max_length=30,
        choices= VALIDEZ_CHOICES,
        default=Treinta
    )
    
    estado = models.CharField(
        max_length=30,
        choices=ESTADO_CHOICES,
        default='Pendiente'
    )
    
    especialista = models.ForeignKey(
        EspecialistaCOMEX,
        models.DO_NOTHING,
        db_column='idespecialista'
    )
    
    class Meta:
        abstract = True
        app_label = ('COMEX')
        verbose_name = _('Oferta')
        verbose_name_plural = _('Ofertas')
        managed = True
        
    def __str__(self):
        return '{}'.format(self.solicitud)
    
class Oferta_Equipo(Oferta):
    
    solicitud = models.ForeignKey(
        Solicitud_Equipo,
        models.DO_NOTHING,
        db_column='numsolicitud',
        verbose_name='Solicitud'        
    )
    
    equipos = models.ManyToManyField(
       Solicitud_Equipo_Proxy,
       through='Oferta_Equipo_Proxy',
       verbose_name='Equipos' 
    )
        
    
    class Meta:
        verbose_name = 'Oferta de Equipo'
        verbose_name_plural = 'Ofertas de Equipos'
        managed = True
        db_table = 'oferta_equipo'
    
     
class Oferta_Equipo_Proxy(models.Model):
    
    solicitud = models.ForeignKey(
        Oferta_Equipo,
        models.DO_NOTHING,
        db_column='numsolicitud'
    )
    
    equipo = models.ForeignKey(
        Solicitud_Equipo_Proxy,
        models.DO_NOTHING,
        db_column='idproducto',
    )
    
    cantidad = models.IntegerField(
        max_length=4,
        
    )
    
    precio = models.FloatField(
        max_length=4,
        
    )
    
    importe = models.FloatField(
        max_length=4
    )
    
    class Meta:
        verbose_name = 'Equipo'
        verbose_name_plural = 'Equipos'
        managed = True
        db_table = 'oferta_equipo_proxy'
    