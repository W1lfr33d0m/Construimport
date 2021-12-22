from django.db import models

class Provincia(models.Model):

    codigo = models.PositiveIntegerField()
    nombre = models.CharField(max_length = 50)

    def __str__(self):
        return self.nombre

class Municipio(models.Model):

    codigo = models.PositiveIntegerField()
    provincia = models.ForeignKey(Provincia, on_delete = models.PROTECT)
    nombre = models.CharField(max_length = 50)
    
    def __str__(self):
        return self.nombre