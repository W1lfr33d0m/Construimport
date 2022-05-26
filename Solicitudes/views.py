from ast import Eq
from multiprocessing import context
from re import template
from django.shortcuts import render
from django.views.generic.base import TemplateView
from formtools.wizard.views import WizardView, SessionWizardView
import io
from django.http import FileResponse
from pytest import Instance
from reportlab.pdfgen import canvas
from .models import *
from .forms import *
from django.views.generic import CreateView
from django.contrib import admin
from Solicitudes.admin import *
from django.forms.models import construct_instance
from django.db.models import base
#from Solicitudes.models import Solicitud
 
# Constuir solicitud       
#def salvar_solicitud(cliente, observaciones, valorestimado, producto, cantidad):
#    Solicitud_EquipoAdmin.save(cliente, observaciones, valorestimado, producto, cantidad)


class Agregar_Solicitud_Equipo(SessionWizardView):
    model = Solicitud_Equipo
    form_list = [FSolicitud_Equipo, FSolicitud_Equipo_Proxy]
    #fields = ['numcontratocliente', 'observaciones', 'valor_estimado']
    template_name = 'testplate.html'
    instance = None
    
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
    
    def dispatch(self, request, *args, **kwargs):
        self.instance = Solicitud_Equipo()
        return super(Agregar_Solicitud_Equipo, self).dispatch(request, *args, **kwargs)
    
    def get_form_instance( self, step ):
        return self.instance 
    
    #def save(self, request:HttpRequest, **kwargs):
    #    return super(Solicitud_Equipo, self).save(request, **kwargs)
    
    def done(self, form_list, **kwargs):
        # Crear la solicitud
        # 
        
        # Recorrer los productos
        # crear solicid
        
        form_data = [form.cleaned_data for form in form_list]
        
        print(form_data)
        
        datos_sol = form_data[0]
        
        solicitud = Solicitud_Equipo()
        
        solicitud.numcontratocliente = datos_sol['numcontratocliente']
        solicitud.observaciones = datos_sol['observaciones']
        solicitud.valor_estimado = datos_sol['valor_estimado']
        
        solicitud.save()
        
        print(solicitud)
        
        solicitud_equipo_proxy = form_data[1]
        
        lequipos = list(solicitud_equipo_proxy.values())
        
        for equipo in Equipo.objects.filter(descripcion = lequipos[0]):
            eproxy = Solicitud_Equipo_Proxy()
            eproxy.numsolicitud_id = solicitud.numsolicitud
            eproxy.idproducto_id= equipo.idproducto
            eproxy.cantidad = lequipos[1]
            eproxy.save()

        
        # #solicitud_equipo_proxy = form_data.pop(1)
        # #print(form_data[1])
        # #idproducto = solicitud_equipo_proxy
        # print(form_data)
        # solicitud_equipo = form_data.pop(0)
        # ls = list(solicitud_equipo)
        # print(ls[0])
        # numero = Solicitud_Equipo.objects.filter(numsolicitude = solicitud_equipo.num)
        # print(solicitud_equipo)
        # # instance = form_list[0].save()
        # lequipos = list(solicitud_equipo_proxy.values())
        # print(lequipos[0])
        # print(lequipos[1])
        # # print(lequipos)
        # # for p in lequipos:
        # #     print(p)
        # #     instance.equipo.add(p)
        # instance = Solicitud_Equipo()
        # eproxy = Solicitud_Equipo_Proxy
        # for form in form_list:
        #     instance = construct_instance(form, instance, form._meta.fields, form._meta.exclude)
        #     instance.save(self)
        # for equipo in Equipo.objects.filter(descripcion = lequipos[0]):
        #     #eproxy.numsolicitud = fo
        #     eproxy.idproducto= equipo.idproducto
        #     eproxy.cantidad = lequipos[1]
        #     eproxy.save()
        #     instance.equipo.add(equipo)
        
        return redirect('Solicitudes/solicitude_equipo/')

    
    
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

