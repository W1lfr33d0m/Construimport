from signal import raise_signal
from django.db import models
from django.utils.translation import gettext as _
from django.core.exceptions import ValidationError
from Nomencladores.validators import UnicodenameValidator
#from django.db.models import apps
#Solicitud_Producto = apps.get_model('Solicitud', 'Solicitud_Producto')
#from Solicitudes.models import Solicitud, Solicitud_Producto
from django.contrib.auth.models import User, Group 


#def validate_especialista(idespecialista):
#    if .group._user_has_module_perms('COMEX') == False:
#        raise ValidationError(
#        _('%(idespecialista)s debe ser un valor entre 20220000 o 20229999'),
#        params={'idespecialista': idespecialista},
#        ) 


         

class EspecialistaCOMEX(models.Model):
    
    PPA = 'PZ'
    Equipo = 'EQ'
    CATEGORIA_CHOICES = [(PPA, 'PPA'), (Equipo, 'Equipo')]
    name_validator = UnicodenameValidator()
    
    
    idespecialista = models.OneToOneField(
                                          User, 
                                          models.DO_NOTHING, 
                                          primary_key=True, 
                                          db_column='idespecialista', 
                                          verbose_name='Usuario',
                                          #validators=[validate_especialista]
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
    
    numoferta = models.IntegerField(
                                      primary_key=True
                                      )
    
   