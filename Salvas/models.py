from django.db import models

# Create your models here.
class Salvas(models.Model):
    proxy = True
    
    class Meta:
        verbose_name = ('Salva y Restaura')
        verbose_name_plural = ('Salvas y Restauras')