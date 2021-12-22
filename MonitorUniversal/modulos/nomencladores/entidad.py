from django.db import models
from .zona import *
from phonenumber_field.modelfields import PhoneNumberField
from smart_selects.db_fields import ChainedForeignKey

class Entidad(models.Model):

   nombre = models.CharField(max_length = 30)
   prefijo = models.CharField(max_length = 10)
   telefono = PhoneNumberField(null = False, blank = False, unique = True)
   de_cimex = models.BooleanField()
   nombre_jefe_informatico = models.CharField(max_length = 20)
   apellido_jefe_informatico = models.CharField(max_length = 40)
   nombre_admin_redes = models.CharField(max_length = 20)
   apellido_admin_redes = models.CharField(max_length = 40)
   rango_inicial_ip = models.TextField() 
   rango_final_ip = models.TextField()
   provincia = models.ForeignKey(Provincia, on_delete = models.PROTECT)
   municipio = ChainedForeignKey(Municipio, chained_field = "provincia", chained_model_field = "provincia", on_delete = models.PROTECT, auto_choose = True, show_all = False)

   def __str__ (self):
      return self.nombre 

