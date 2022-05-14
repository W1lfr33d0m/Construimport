from django.contrib import admin
#from Reportes.models import MyReport, SolicitudPdf
from .models import *
from re import template
from django.template.response import TemplateResponse
from django.utils.translation import gettext as _
from easy_pdf.views import PDFTemplateView

# Register your models here.
@admin.register(Reporte_Solicitud)
class Reporte_SolicitudAdmin(admin.ModelAdmin):
    template_name = 'reporte_solicitudes.html'
    icon_name =  'Reportes'
    
    def get_urls(self):
        from django.urls import path
        info = self.model._meta.app_label, self.model._meta.model_name

        return [
            path('', self.reporte_solicitudesview, name='%s_%s_changelist' % info),
        ]
    
    def reporte_solicitudesview(self, request):
        context = {
            **self.admin_site.each_context(request),
            'title': 'Reportes de Solicitudes',
                }
        return TemplateResponse(request, self.template_name, context)
    
#@admin.register(SolicitudPdf)
#class SolicitudPdfAdmin(admin.ModelAdmin):
    
#    list_display = ('numsolicitud', 'numcontratocliente','fechasol', 'idproducto', 'cantidad','numcontratoproveedor',)


