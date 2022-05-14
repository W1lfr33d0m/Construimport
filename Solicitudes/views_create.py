from traceback import format_list
from django.views.generic import CreateView
from multiprocessing import context
from re import template
from django.shortcuts import render
from django.views.generic.base import TemplateView
from Solicitudes.forms import FSolicitud_Equipo, FSolicitud_Equipo_Proxy
from formtools.wizard.views import WizardView, SessionWizardView
import io
from django.http import FileResponse
from reportlab.pdfgen import canvas
from .models import *

class Solicitud_Equipo_FormView(WizardView):
    template_name = "solicitud_equipo_form.html"
    form_list = [FSolicitud_Equipo, FSolicitud_Equipo_Proxy]
    
    
    
    def form_valid(self, form):
        return super().form_valid(form)
    
    def get_form(self, form):
        form =  super().get_form(form)
        form.fields['numcontratocliente'].widget_attrs.update({'autofocus': 'autofocus'})
    
    def done(self, form_list, **kwargs):
        return render(self.request, 'done.html', {
            'form_data': [form.cleaned_data for form in form_list],
        })