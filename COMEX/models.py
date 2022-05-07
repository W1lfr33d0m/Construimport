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
from Solicitudes.models import *
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
    
    numero = models.AutoField(
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
        db_column='idpais',
        null=True,
        verbose_name='País de Origen de la carga',
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
        User,
        models.DO_NOTHING,
        db_column='username'
    )
    
    valor_estimado = models.FloatField(
        #max_length= 10,
        null= False,
        verbose_name= 'Valor Estimado',
    )
    
    monto_total = models.FloatField(
        #max_length=10,
        null=True,
        verbose_name='Monto Total'
    )
    
    class Meta:
        abstract = True
        app_label = ('COMEX')
        verbose_name = _('Oferta')
        verbose_name_plural = _('Ofertas')
        managed = True
        
    def __str__(self):
        return '{}'.format(self.solicitud)
    
        """
        Clase Oferta de Equipos
        """

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
        db_column='numsolicitud',
        db_constraint=False
    )
    
    equipo = models.ForeignKey(
        Solicitud_Equipo_Proxy,
        models.DO_NOTHING,
        db_column='idproducto',
    )
    
    cantidad = models.IntegerField(
        #max_length=8,
        
    )
    
    precio = models.FloatField(
        #max_length=8,
        null=True,
        blank = True
    
    )
    
    importe = models.FloatField(
        #max_length=8,
        null=True,
        blank=True
    )
    
    class Meta:
        verbose_name = 'Equipo'
        verbose_name_plural = 'Equipos'
        managed = True
        db_table = 'oferta_equipo_proxy'
        
        """
        Oferta_PPA
        
        """
class Oferta_PPA(Oferta):
    
    solicitud = models.ForeignKey(
        Solicitud_PPA,
        models.DO_NOTHING,
        db_column='numsolicitud',
        verbose_name='Solicitud'        
    )
    
    idproducto = models.ManyToManyField(
       Solicitud_PPA_Proxy,
       through='Oferta_PPA_Proxy',
       verbose_name='Equipos' 
    )
        
    
    class Meta:
        verbose_name = 'Oferta de Partes y Piezas'
        verbose_name_plural = 'Ofertas de Partes y Piezas'
        managed = True
        db_table = 'oferta_ppa'
    
     
class Oferta_PPA_Proxy(models.Model):
    
    solicitud = models.ForeignKey(
        Oferta_PPA,
        models.DO_NOTHING,
        db_column='numsolicitud'
    )
    
    idproducto = models.ForeignKey(
        Solicitud_PPA_Proxy,
        models.DO_NOTHING,
        db_column='idproducto',
    )
    
    cantidad = models.IntegerField(
        #max_length=8,
        
    )
    
    precio = models.FloatField(
        #max_length=8,
        
    )
    
    importe = models.FloatField(
        #max_length=8
    )
    
    class Meta:
        verbose_name = 'Partes y Piezas'
        verbose_name_plural = 'Partes y Piezas'
        managed = True
        db_table = 'oferta_ppa_proxy'
    

        """
        Clase Oferta de Neumáticos
        """

class Oferta_Neumatico(Oferta):
    
    solicitud = models.ForeignKey(
        Solicitud_Neumatico,
        models.DO_NOTHING,
        db_column='numsolicitud',
        verbose_name='Solicitud'        
    )
    
    neumaticos = models.ManyToManyField(
       Solicitud_Neumatico_Proxy,
       through='Oferta_Neumatico_Proxy',
       verbose_name='Neumáticos' 
    )
        
    
    class Meta:
        verbose_name = 'Oferta de Neumáticos'
        verbose_name_plural = 'Oferta de Neumáticos'
        managed = True
        db_table = 'oferta_neumaticos'
    

class Oferta_Neumatico_Proxy(models.Model):
    
    solicitud = models.ForeignKey(
        Oferta_Neumatico,
        models.DO_NOTHING,
        db_column='numsolicitud'
    )
    
    neumatico = models.ForeignKey(
        Solicitud_Neumatico_Proxy,
        models.DO_NOTHING,
        db_column='idproducto',
    )
    
    cantidad = models.IntegerField(
        #max_length=8,
        
    )
    
    precio = models.FloatField(
        #max_length=8,
        null=True,
        blank = True
    
    )
    
    importe = models.FloatField(
        #max_length=8,
        null=True,
        blank=True
    )
    
    class Meta:
        verbose_name = 'Neumático'
        verbose_name_plural = 'Neumáticos'
        managed = True
        db_table = 'oferta_neumatico_proxy'
        

        """
        Clase Oferta de Baterías
        """

class Oferta_Bateria(Oferta):
    
    solicitud = models.ForeignKey(
        Solicitud_Bateria,
        models.DO_NOTHING,
        db_column='numsolicitud',
        verbose_name='Solicitud'        
    )
    
    baterias = models.ManyToManyField(
       Solicitud_Bateria_Proxy,
       through='Oferta_Bateria_Proxy',
       verbose_name='Baterías' 
    )
        
    
    class Meta:
        verbose_name = 'Oferta de Baterías'
        verbose_name_plural = 'Oferta de Baterías'
        managed = True
        db_table = 'oferta_baterias'
    

class Oferta_Bateria_Proxy(models.Model):
    
    solicitud = models.ForeignKey(
        Oferta_Bateria,
        models.DO_NOTHING,
        db_column='numsolicitud'
    )
    
    bateria = models.ForeignKey(
        Solicitud_Bateria_Proxy,
        models.DO_NOTHING,
        db_column='idproducto',
    )
    
    cantidad = models.IntegerField(
        #max_length=8,
        
    )
    
    precio = models.FloatField(
        #max_length=8,
        null=True,
        blank = True
    
    )
    
    importe = models.FloatField(
        #max_length=8,
        null=True,
        blank=True
    )
    
    class Meta:
        verbose_name = 'Batería'
        verbose_name_plural = 'Baterías'
        managed = True
        db_table = 'oferta_bateria_proxy'
        