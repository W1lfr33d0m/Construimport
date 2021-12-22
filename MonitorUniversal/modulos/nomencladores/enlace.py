from django.db import models
from .router import Router

class Enlace(models.Model):

    nombre = models.CharField()
    interno = models.Booleanfield()
    ip = models.CharField(max_length = 15)
    ancho_banda = models.PositiveIntegerField()
    tipo = models.CharField(max_length = 10)
    router = models.ForeignKey(Router, on_delete = PROTECT)

    def __str__(self):
        return self.nombre
        