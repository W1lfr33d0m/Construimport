from multiprocessing import context
from re import template
from django.shortcuts import render
from django.views.generic.base import TemplateView
import io
from django.http import FileResponse
from reportlab.pdfgen import canvas
from .models import *
#from Solicitudes.models import Solicitud


def generatePDF(request, id):
    buffer = io.BytesIO()
    x = canvas.Canvas(buffer)
    x.drawString(100, 100, "Let's generate this pdf file.")
    x.showPage()
    x.save()
    buffer.seek(0)
    return FileResponse(buffer, as_attachment=True, filename='attempt1.pdf')

class DashboardView(TemplateView):
    template_name = 'dashboard.html'
    
    def get_solicitudes_mensuales(self):
        eq=0
        ppa=0
        nm=bt=0
        solicitudes = [eq, ppa, nm, bt]
        year = datetime.now().year
        for m in range(1, 13):
            eq = Solicitud_Equipo.objects.filter(fechasol__year = 2022, fechasol__month = m).count()
            ppa = Solicitud_PPA.objects.filter(fechasol__year = 2022, fechasol__month = m).count()
            nm = Solicitud_Neumatico.objects.filter(fechasol__year = 2022, fechasol__month = m).count()
            bt = Solicitud_Bateria.objects.filter(fechasol__year = 2022, fechasol__month = m).count()
        print(solicitudes)
        return solicitudes
        
    def get_context_data(self, **kwargs):
        context= super().get_context_data(**kwargs)
        context['panel']='Panel de Administración'
        context['get_solicitudes_mensuales']=self.get_solicitudes_mensuales()
        return context