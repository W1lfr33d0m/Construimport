from tabnanny import verbose
from django.db import models
from reports.base import ModelReport
#from reports import ModelReport
from Solicitudes.models import Solicitud
from django.utils.translation import gettext as _

# This file can be named anything, but it lives well within the admin.py or
# models.py as it'll ensure your register() command is run.
# yourapp/reports.py -- This file can be named anything

class Reporte_Solicitud(models.Model):
    proxy = True
    
    class Meta:
        verbose_name = ('Reporte de Solicitud'),
        verbose_name_plural = ('Reportes de Solicitudes')
        
class Reporte_Proveedor(models.Model):
    proxy = True
    
    class Meta:
        verbose_name = ('Reporte de Proveedor'),
        verbose_name_plural = ('Reportes de Proveedores')


# Create your models here.
#class MyReport(ModelReport):
#    name = "Report - My Report"
#    queryset = Solicitud.objects.all()
    

#class SolicitudPdf(models.Model):
#    numsolicitud = models.ForeignKey(Solicitud, models.DO_NOTHING, db_column='numsolicitud', verbose_name = 'Número')
#    numcontratocliente = models.ForeignKey(Solicitud, models.DO_NOTHING, db_column='numcontratocliente', verbose_name = 'Cliente')
#    idproducto = models.ForeignKey(Solicitud, models.DO_NOTHING, db_column='idproducto', verbose_name = 'Producto')
#    fechasol = models.ForeignKey(Solicitud, models.DO_NOTHING, db_column='fechasol', verbose_name='fecha')
#    numcontratoproveedor = models.ForeignKey(Solicitud, models.DO_NOTHING, db_column='numcontratoproveedor', blank=True, null=True, verbose_name = 'Proveedor')
#    cantidad = models.ForeignKey(Solicitud, models.DO_NOTHING, db_column='cantidad')
    
#    class Meta:
 #       app_label = ('Reporte Solicitudes')
 #       verbose_name = _('Reporte Solicitud')
 #       verbose_name_plural = _('Reportes Solicitudes')
 #       managed = False
 #       db_table = 'solicitud'
 #       unique_together = (('numsolicitud', 'numcontratocliente'),)