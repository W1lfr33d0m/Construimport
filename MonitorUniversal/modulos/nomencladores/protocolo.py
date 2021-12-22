from django.db import models

class Protocolo(models.Model):

    nombre = models.CharField(max_length = 50)
    prefijo = models.CharField(max_length = 5)

    def __str__(self):

        return self.prefijo

        