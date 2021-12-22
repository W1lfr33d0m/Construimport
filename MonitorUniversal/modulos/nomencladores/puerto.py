from django.db import models

class Puerto(models.Model):

    nombre = models.CharField(max_length = 4)
    
    def __str__(self):

        return self.nombre

        