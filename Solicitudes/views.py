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
    template_name = 'index.html'
    
    def get_solicitudes_mensuales(self):
        eq=0
        ppa=0
        nm=bt=0
        solicitudes = [eq, ppa, nm, bt]
        for se in Solicitud_Equipo.objects.all():
            eq+=1
        for p in Solicitud_PPA.objects.all():
            ppa+=1
        for n in Solicitud_Neumatico.objects.all():
            nm+=1
        for b in Solicitud_Bateria.objects.all():
            bt+=1
        return solicitudes
        
    def get_context_data(self, **kwargs):
        context= super().get_context_data(**kwargs)
        context['panel']='Panel de Administración'
        context['get_solicitudes_mensuales']=self.get_solicitudes_mensuales()