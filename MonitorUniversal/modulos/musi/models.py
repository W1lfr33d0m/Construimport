from django.db import models
from modulos.nomencladores.entidad import Entidad
from modulos.nomencladores.servidor import Servidor
from modulos.nomencladores.protocolo import Protocolo
from modulos.nomencladores.puerto import Puerto
from modulos.nomencladores.zona import *
from phonenumber_field.modelfields import PhoneNumberField
from smart_selects.db_fields import ChainedForeignKey

# Create your models here.

class Pc(models.Model):

    ip = models.TextField() 
    nombre = models.CharField(max_length = 10)
    tarjeta_red = models.CharField(max_length = 20)

    def __str__(self):
        return self.nombre

class Usuario(models.Model):

    nombre = models.CharField(max_length = 20)
    apellido = models.CharField(max_length = 40)
    correo = models.EmailField()
    telefono = PhoneNumberField(null = False, blank = False, unique = True)
    nombre_usuario = models.CharField(max_length = 10)
    entidad = models.ForeignKey(Entidad, on_delete = models.PROTECT)
    pc = models.OneToOneField(Pc, on_delete = models.PROTECT)
    provincia = models.ForeignKey(Provincia, on_delete = models.PROTECT)
    municipio = ChainedForeignKey(Municipio, chained_field = "provincia", chained_model_field = "provincia", on_delete = models.PROTECT, auto_choose = True, show_all = False)

    TIPO_USUARIO = (
        ('E', 'Empleado'),
        ('A', 'Directorio Activo'),
        ('T', 'Adiestrado'),
    )
    tipo_usuario = models.CharField(max_length = 1, choices = TIPO_USUARIO)

    CARGO = (
        ('D', 'Jefe de Departamento'),
        ('P', 'Jefe de Proyecto'),
        ('E', 'Especialista'),
        ('T', 'Técnico'),
    )
    
    cargo = models.CharField(max_length = 1, choices = CARGO)
    
    def __str__(self):
        return self.nombre_usuario

class Evento(models.Model):

    nombre = models.CharField(max_length = 20)

    def __str__(self):
        return self.nombre


class GestorCorreo(models.Model):

    nombre = models.CharField(max_length = 20)

    def __str__(self):
        return self.nombre

class TraficoCorreo(models.Model):

    fecha = models.DateTimeField()
    usuario = models.ForeignKey(Usuario, on_delete = models.PROTECT)
    servidor = models.ForeignKey(Servidor, on_delete = models.PROTECT)
    asunto = models.CharField(max_length = 20)
    cant_destino = models.IntegerField()
    tamagno = models.FloatField()
    evento = models.ForeignKey(Evento, on_delete = models.PROTECT)
    gestor_correo = models.ForeignKey(GestorCorreo, on_delete = models.PROTECT)
    pc = models.ForeignKey(Pc, on_delete = models.PROTECT)

    def __str__(self):
        return self.usuario.nombre

class SitioWeb(models.Model):

    nombre = models.CharField(max_length = 20)
    ip = models.TextField() 
    host = models.TextField() 
    url = models.CharField

    def __str__(self):
        return self.nombre

class TraficoInternet(models.Model):

    fecha = models.DateTimeField()
    usuario = models.ForeignKey(Usuario, on_delete = models.PROTECT)
    servidor = models.ForeignKey(Servidor, on_delete = models.PROTECT)
    protocolo = models.ForeignKey(Protocolo, on_delete = models.PROTECT)
    puerto = models.ForeignKey(Puerto, on_delete = models.PROTECT)
    sitio_web = models.ForeignKey(SitioWeb, on_delete = models.PROTECT)
    bytes_recibidos = models.FloatField()
    bytes_enviados = models.FloatField()
    tipo_mime= models.CharField(max_length = 10)
    pc = models.ForeignKey(Pc, on_delete = models.PROTECT)

    def __str__(self):
        return self.usuario.nombre
