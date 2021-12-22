from django.db import models

class Servidor(models.Model):

    nombre = models.CharField(max_length = 20)
    ip = models.CharField(max_length = 15)
    interno = models.BooleanField()
    local = models.CharField(max_length = 1)
    estante = models.CharField(max_length = 10)

    GRUPO = (
       ('WI', 'Wintec'),
       ('SE', 'Sentai'),
       ('SI', 'Silver'),
       ('DW', 'DataWarehouse'),
       ('LN', 'LotusNotes'),
       ('SO', 'Soptec'),
       ('IC', 'ICE'),
    )
    grupo = models.CharField(max_length = 2, choices = GRUPO)   

    OS = (
        ('W', 'Windows'),
        ('M', 'MacOS'),
        ('L', 'Linux'),
    )
    os = models.CharField(max_length = 1, choices = OS)

    def __str__(self):

        return self.nombre
        

