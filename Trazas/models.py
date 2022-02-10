from tabnanny import verbose
from django.db import models
from django.utils.translation import gettext as _

# Create your models here.
class LogEntry(models.Model):
    
    class meta:
        verbose_name = ('Traza')
        verbose_name_plural = ('Trazas')