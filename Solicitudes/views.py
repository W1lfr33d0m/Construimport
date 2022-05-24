from multiprocessing import context
from re import template
from django.shortcuts import render
from django.views.generic.base import TemplateView
from formtools.wizard.views import WizardView, SessionWizardView
import io
from django.http import FileResponse
from reportlab.pdfgen import canvas
from .models import *
from .forms import *
from django.views.generic import CreateView
#from Solicitudes.models import Solicitud
 
# Constuir solicitud       
def salvar_solicitud(cliente, observaciones, valorestimado, producto, cantidad):
    print(cliente, observaciones, valorestimado, producto, cantidad)


class Agregar_Solicitud_Equipo(SessionWizardView):
    model = Solicitud_Equipo
    form_list = [FSolicitud_Equipo, FSolicitud_Equipo_Proxy, ]
    #fields = ['numcontratocliente', 'observaciones', 'valor_estimado']
    template_name = 'testplate.html'

    def done(self, form_list, **kwargs):
        form_data = [form.cleaned_data for form in form_list]
        datos_f1 = form_data[0]
        datos_f2 = form_data[1]
        print(form_data)
        print(datos_f1)
        print(datos_f2)
        # Procesar la solicitud
        salvar_solicitud(
            datos_f1['numcontratocliente'], 
            datos_f1['observaciones'],
            datos_f1['valor_estimado'],
            datos_f2['idproducto'],
            datos_f2['cantidad']
        )
        return redirect('/')
       
    def form_valid(self, form):
        return super().form_valid(form)
    
class Agregar_Solicitud_PPA(SessionWizardView):
    model = Solicitud_Equipo
    form_list = [FSolicitud_Equipo, FSolicitud_Equipo_Proxy]
    #fields = ['numcontratocliente', 'observaciones', 'valor_estimado']
    template_name = 'testplate.html'

    def done(self, form_list, **kwargs):
        form_data = [form.cleaned_data for form in form_list]
        return render(self.request, 'testplate.html', {'data': form_data})
       
    def form_valid(self, form):
        return super().form_valid(form)

      

def generatePDF(request, id):
    buffer = io.BytesIO()
    x = canvas.Canvas(buffer)
    x.drawString(100, 100, "Let's generate this pdf file.")
    x.showPage()
    x.save()
    buffer.seek(0)
    return FileResponse(buffer, as_attachment=True, filename='attempt1.pdf')

