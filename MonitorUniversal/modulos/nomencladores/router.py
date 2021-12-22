from django.db import models

class Router(models.Model):

    nombre = models.CharField(max_length = 20)
    ip = models.CharField(max_length = 15)
    cant_enlace = models.IntegerField()

    def __str__(self):

        return self.nombre