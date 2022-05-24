from django.shortcuts import render
from reportlab.pdfgen import canvas
from reportlab.lib.utils import ImageReader
from datetime import datetime
from django.http import HttpResponse
from easy_pdf.views import PDFTemplateView
from django.views.generic.base import TemplateView
from Solicitudes.models import *
from COMEX.models import *
from django.contrib.auth.mixins import LoginRequiredMixin
# Create your views here.

def index(request):
    return render(request, 'reporte_solicitudes.html')

class Reporte_SolicitudesView(TemplateView):
    template_name = 'reporte_solicitudes.html'
    
    def get_solicitudes_mensuales_equipo(self):
        solicitudes_equipo = []
        year = date.today().year
        for m in range(1, 13):
            eq = Solicitud_Equipo.objects.filter(fechasol__year = year, fechasol__month = m, estado = 'Aprobada').count()
            solicitudes_equipo.append(eq)
        return solicitudes_equipo
        
    def get_solicitudes_mensuales_ppa(self):
        solicitudes_ppa = []
        year = date.today().year
        for m in range(1, 13):
            eq = Solicitud_PPA.objects.filter(fechasol__year = year, fechasol__month = m, estado = 'Aprobada').count()
            solicitudes_ppa.append(eq)
        return solicitudes_ppa
        
    def get_solicitudes_mensuales_neumatico(self):
        solicitudes_neumatico = []
        year = date.today().year
        for m in range(1, 13):
            eq = Solicitud_Neumatico.objects.filter(fechasol__year = year, fechasol__month = m, estado = 'Aprobada').count()
            solicitudes_neumatico.append(eq)
        return solicitudes_neumatico
    
    def get_solicitudes_mensuales_bateria(self):
        solicitudes_bateria = []
        year = date.today().year
        for m in range(1, 13):
            eq = Solicitud_Bateria.objects.filter(fechasol__year = year, fechasol__month = m, estado = 'Aprobada').count()
            solicitudes_bateria.append(eq)
        return solicitudes_bateria
    
    def get_context_data(self, **kwargs):
        context= super().get_context_data(**kwargs)
        context['title']='Reportes de Solicitudes'
        context['get_solicitudes_mensuales_equipo']=self.get_solicitudes_mensuales_equipo()
        context['get_solicitudes_mensuales_ppa']=self.get_solicitudes_mensuales_ppa()
        context['get_solicitudes_mensuales_neumatico']=self.get_solicitudes_mensuales_neumatico()
        context['get_solicitudes_mensuales_bateria']=self.get_solicitudes_mensuales_bateria()
        return context


class Reporte_ProveedoresView(TemplateView):
    template_name = 'reporte_proveedores.html'

    def get_proveedor_equipos(self):
        pass


def pdf_dw(request):                                  

    # Create the HttpResponse object 
    response = HttpResponse(content_type='application/pdf') 

    # This line force a download
    response['Content-Disposition'] = 'attachment; filename="1.pdf"' 

    # READ Optional GET param
    get_param = request.GET.get('name', 'World')

    # Generate unique timestamp
    ts = datetime.utcnow().strftime('%Y-%m-%d %H:%M:%S.%f')

    p = canvas.Canvas(response)

    # Write content on the PDF 
    p.drawString(100, 500, "Hello " + get_param + " (Dynamic PDF) - " + ts ) 

    # Close the PDF object. 
    p.showPage() 
    p.save() 

    # Show the result to the user    
    return response

class HelloPDFView(PDFTemplateView):
    template_name = 'hello.html'
    