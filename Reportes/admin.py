from django.contrib import admin
from Reportes.models import MyReport, SolicitudPdf
from Solicitudes.models import Solicitud
from easy_pdf.views import PDFTemplateView

# Register your models here.
@admin.register(SolicitudPdf)
class SolicitudPdfAdmin(admin.ModelAdmin):
    
    list_display = ('numsolicitud', 'numcontratocliente','fechasol', 'idproducto', 'cantidad','numcontratoproveedor',)


