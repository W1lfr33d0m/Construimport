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
from .admin import *
#from Solicitudes.models import Solicitud
 
# Constuir solicitud       
#def salvar_solicitud(cliente, observaciones, valorestimado, producto, cantidad):
#    Solicitud_EquipoAdmin.save(cliente, observaciones, valorestimado, producto, cantidad)


class Agregar_Solicitud_Equipo(SessionWizardView):
    model = Solicitud_Equipo
    form_list = [FSolicitud_Equipo, FSolicitud_Equipo_Proxy]
    #fields = ['numcontratocliente', 'observaciones', 'valor_estimado']
    template_name = 'testplate.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['nombre_url'] = 'solicitud_equipo'
        context['opts'] = Solicitud_Equipo._meta,
        context['change'] = True,
        context['is_popup'] = False,
        context['save_as'] = False,
        context['has_delete_permission'] = False,
        context['has_add_permission'] = True,
        context['has_change_permission'] = False
        context['changeform_template'] = 'solicitud_form.html'
        context['nombre_formulario'] = 'Agregar Solicitud de Equipo'
        context['mensaje'] = 'La solicitud fue adicionada correctamente.'
        context.update(admin.site.each_context(self.request))
        return context
    
    def done(self, form_list, **kwargs):
        form_data = [form.cleaned_data for form in form_list]
        datos_f1 = form_data[0]
        datos_f2 = form_data[1]
        print(form_data)
        print(datos_f1)
        print(datos_f2)
        Solicitud_EquipoAdmin.save_form(self, form_data)
        # Procesar la solicitud
        return render(self.request, 'testplate.html', {'data': form_data})
       
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

