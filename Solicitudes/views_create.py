from django.views.generic import CreateView
from multiprocessing import context
from re import template
from django.shortcuts import render
from django.views.generic.base import TemplateView
from formtools.wizard.views import WizardView, SessionWizardView
import io
from django.http import FileResponse
from reportlab.pdfgen import canvas
from .models import *

class Solicitud_Equipo_FormView(CreateView):
    model = Solicitud_Equipo
    fields = '__all__'
    template_name = "solicitud_equipo_form.html"
    
    def get_context_data(self, request:HttpResponse, **kwargs):
        context = super().get_context_data(**kwargs)
        context['nombre_url'] = 'solicitud_equipo_form'
        context['nombre_formulario'] = 'Agregar una nueva solicitud de Equipo'
        context['mensaje'] = 'La solicitud fue adicionada correctamente.'
        return render(request, 'solicitud_equipo_form.html', context)  
    
    def form_valid(self, form):
        return super().form_valid(form)
    
    def get_form(self, form):
        form =  super().get_form(form)
        form.fields['numcontratocliente'].widget_attrs.update({'autofocus': 'autofocus'})
        