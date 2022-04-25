from pydoc import cli
import re
from signal import raise_signal
from tabnanny import verbose
from unicodedata import name
from django.db import models
from django.db.models import ManyToManyField, ManyToManyRel, Model
from django.utils.translation import gettext as _
from django.core.exceptions import ValidationError
from Nomencladores.validators import UnicodenameValidator
#from Nomencladores.models import Cliente, Proveedor
#from django.db.models import apps
#Solicitud_Equipo = apps.get_model('Solicitud', 'Solicitud_Producto')
#from Solicitudes.models import Solicitud, Solicitud_Bateria_Proveedor, Solicitud_Equipo_Proveedor, Solicitud_Neumatico_Proveedor, Solicitud_PPA_Proveedor, Solicitud_Neumatico_Proxy, Solicitud_Bateria_Proxy, Solicitud_Equipo_Proxy, Solicitud_PPA_Proxy
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
    
    