from django.db import models
from django.utils.translation import gettext as _
from smuggler import forms, views


# Create your models here.
class Restauras(models.Model):
    archivos = forms.ImportForm
    
    class Meta:
        app_label = ('Información')
        verbose_name = _('Restaura')
        verbose_name_plural = _('Restauras')
        managed = False