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
    template_name = 'solicitud_equipo_form.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['nombre_url'] = 'solicitud_equipo'
        context['opts'] = Solicitud_Equipo._meta,
        context['app_list']
        context['change'] = True,
        context['is_popup'] = False,
        context['save_as'] = False,
        context['has_delete_permission'] = False,
        context['has_add_permission'] = True,
        context['has_change_permission'] = False
        context['changeform_template'] = 'solicitud_equipo_form.html'
        context['nombre_formulario'] = 'Agregar Solicitud de Equipo'
        context['mensaje'] = 'La solicitud fue adicionada correctamente.'
        return context

    def done(self, form_list, **kwargs):
        return render(self.request, 'change_list.html', {
        'form_data': [form.cleaned_data for form in form_list],
        })
    
    def get(self, request, *args, **kwargs):
        try:
            return self.render(self.get_form())
        except KeyError:
             return super().get(request, *args, **kwargs)
    
    def form_valid(self, form):
        return super().form_valid(form)

    def get_form(self):
        form = super().get_form()
        form.fields['numcontratocliente'].widget.attrs.update({'autofocus': 'autofocus'})
        return form      
       
def display(request):
    return render(request, 'solicitud_equipo_form.html', {'context': Agregar_Solicitud_Equipo.get_context_data})

def generatePDF(request, id):
    buffer = io.BytesIO()
    x = canvas.Canvas(buffer)
    x.drawString(100, 100, "Let's generate this pdf file.")
    x.showPage()
    x.save()
    buffer.seek(0)
    return FileResponse(buffer, as_attachment=True, filename='attempt1.pdf')

