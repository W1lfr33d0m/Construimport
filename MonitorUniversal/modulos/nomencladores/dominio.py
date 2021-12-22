from django.db import models

class Dominio(models.Model):

    nombre = models.CharField(max_length = 20, help_text = 'Escriba el nombre del dominio.')
    prefijo = models.CharField(max_length = 2, help_text = 'Escriba el prefijo.')

    def __str__(self):
        return self.prefijo