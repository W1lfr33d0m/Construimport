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
        
class Agregar_Solicitud_Equipo(SessionWizardView):
    model = Solicitud_Equipo
    form_list = [FSolicitud_Equipo, FSolicitud_Equipo_Proxy]
    #fields = ['numcontratocliente', 'observaciones', 'valor_estimado']
    template_name = 'solicitud_equipo_form.html'

   
    def done(self, form_list, **kwargs):
        return render(self.request, 'done.html', {
            'form_data': [form.cleaned_data for form in form_list],
        })
       
    def form_valid(self, form):
        return super().form_valid(form)

    def get_form(self):
        form = super().get_form()
        form.fields['numcontratocliente'].widget.attrs.update({'autofocus': 'autofocus'})
        return form      

def generatePDF(request, id):
    buffer = io.BytesIO()
    x = canvas.Canvas(buffer)
    x.drawString(100, 100, "Let's generate this pdf file.")
    x.showPage()
    x.save()
    buffer.seek(0)
    return FileResponse(buffer, as_attachment=True, filename='attempt1.pdf')

