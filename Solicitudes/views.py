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
    template_name = 'solicitud_form.html'
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
        # if self.steps.current == 1:
        #     context.update({
        #         'FSolicitud_Equipo_Proxy': FSolicitud_Equipo_ProxyFormset()
        #     })
        return context
    
    def dispatch(self, request, *args, **kwargs):
        self.instance = Solicitud_Equipo()
        return super(Agregar_Solicitud_Equipo, self).dispatch(request, *args, **kwargs)
    
    def get_form_instance( self, step ):
        return self.instance 
    
   
    def done(self, form_list, **kwargs):
        # Crear la solicitud
           
        # Recorrer los productos
        # crear solicitud
        
        form_data = [form.cleaned_data for form in form_list]
        
        print(form_data)
        
        datos_sol = form_data[0]
        
        solicitud = Solicitud_Equipo()
        
        solicitud.cliente = datos_sol['cliente']
        solicitud.observaciones = datos_sol['observaciones']
        solicitud.valor_estimado = datos_sol['valor_estimado']
        
        solicitud.save()
        
        print(solicitud)
        
        solicitud_proxy = form_data[1]
        
        l = list(solicitud_proxy.values())
        
        
        for equipo in Equipo.objects.filter(descripcion = l[0]):
            eproxy = Solicitud_Equipo_Proxy()
            eproxy.numsolicitud_id = solicitud.numsolicitud
            eproxy.idproducto_id = equipo.idproducto
            eproxy.cantidad = l[1]
            for p in Proveedor.objects.filter(equipos = eproxy.idproducto):
                eproveedor = Solicitud_Equipo_Proveedor()
                eproveedor.numsolicitud_id = solicitud.numsolicitud
                eproveedor.codmincex_id = p.codmincex
                eproveedor.save()
            eproxy.save()
            
        
        
        messages.success(self.request,'Se agregó correctamente la Solicitud')
        
        return redirect('/Solicitudes/solicitud_equipo/')

    def form_valid(self, form):
        return super().form_valid(form)

class Agregar_Solicitud_PPA(SessionWizardView):
    model = Solicitud_PPA
    form_list = [FSolicitud_PPA, FSolicitud_PPA_Proxy]
    #fields = ['numcontratocliente', 'observaciones', 'valor_estimado']
    template_name = 'solicitud_form.html'
    instance = None
    
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['nombre_url'] = 'solicitud_ppa'
        context['opts'] = Solicitud_PPA._meta,
        context['change'] = True,
        context['is_popup'] = False,
        context['save_as'] = False,
        context['has_delete_permission'] = False,
        context['has_add_permission'] = True,
        context['has_change_permission'] = False
        context['changeform_template'] = 'solicitud_form.html'
        context['nombre_formulario'] = 'Agregar Solicitud de PPA'
        context['mensaje'] = 'La solicitud fue adicionada correctamente.'
        context.update(admin.site.each_context(self.request))
        return context
    
    def dispatch(self, request, *args, **kwargs):
        self.instance = Solicitud_PPA()
        return super(Agregar_Solicitud_PPA, self).dispatch(request, *args, **kwargs)
    
    def get_form_instance( self, step ):
        return self.instance 
    
   
    def done(self, form_list, **kwargs):
        # Crear la solicitud
           
        # Recorrer los productos
        # crear solicitud
        
        form_data = [form.cleaned_data for form in form_list]
        
        print(form_data)
        
        datos_sol = form_data[0]
        
        solicitud = Solicitud_PPA()
        
        solicitud.cliente = datos_sol['cliente']
        solicitud.observaciones = datos_sol['observaciones']
        solicitud.valor_estimado = datos_sol['valor_estimado']
        
        solicitud.save()
        
        print(solicitud)
        
        solicitud_proxy = form_data[1]
        
        l = list(solicitud_proxy.values())
        
        for ppa in Equipo.objects.filter(descripcion = l[0]):
            eproxy = Solicitud_PPA_Proxy()
            eproxy.numsolicitud_id = solicitud.numsolicitud
            eproxy.idproducto_id= ppa.idproducto
            eproxy.cantidad = l[1]
            eproxy.save()
        
        return redirect('/')

    def form_valid(self, form):
        return super().form_valid(form)

class Agregar_Solicitud_Neumatico(SessionWizardView):
    model = Solicitud_Neumatico
    form_list = [FSolicitud_Neumatico, FSolicitud_Neumatico_Proxy]
    #fields = ['numcontratocliente', 'observaciones', 'valor_estimado']
    template_name = 'solicitud_form.html'
    instance = None
    
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['nombre_url'] = 'solicitud_equipo'
        context['opts'] = Solicitud_Neumatico._meta,
        context['change'] = True,
        context['is_popup'] = False,
        context['save_as'] = False,
        context['has_delete_permission'] = False,
        context['has_add_permission'] = True,
        context['has_change_permission'] = False
        context['changeform_template'] = 'solicitud_form.html'
        context['nombre_formulario'] = 'Agregar Solicitud de Neumático'
        context['mensaje'] = 'La solicitud fue adicionada correctamente.'
        context.update(admin.site.each_context(self.request))
        return context
    
    def dispatch(self, request, *args, **kwargs):
        self.instance = Solicitud_Neumatico()
        return super(Agregar_Solicitud_Neumatico, self).dispatch(request, *args, **kwargs)
    
    def get_form_instance( self, step ):
        return self.instance 
    
   
    def done(self, form_list, **kwargs):
        # Crear la solicitud
           
        # Recorrer los productos
        # crear solicitud
        
        form_data = [form.cleaned_data for form in form_list]
        
        print(form_data)
        
        datos_sol = form_data[0]
        
        solicitud = Solicitud_Neumatico()
        
        solicitud.cliente = datos_sol['cliente']
        solicitud.observaciones = datos_sol['observaciones']
        solicitud.valor_estimado = datos_sol['valor_estimado']
        
        solicitud.save()
        
        print(solicitud)
        
        solicitud_proxy = form_data[1]
        
        l = list(solicitud_proxy.values())
        
        for neumatico in Neumatico.objects.filter(descripcion = l[0]):
            eproxy = Solicitud_Neumatico_Proxy()
            eproxy.numsolicitud_id = solicitud.numsolicitud
            eproxy.idproducto_id= neumatico.idproducto
            eproxy.cantidad = l[1]
            eproxy.save()
        
        return redirect('/')

    def form_valid(self, form):
        return super().form_valid(form)

    
class Agregar_Solicitud_Bateria(SessionWizardView):
    model = Solicitud_Bateria
    form_list = [FSolicitud_Bateria, FSolicitud_Bateria_Proxy]
    #fields = ['numcontratocliente', 'observaciones', 'valor_estimado']
    template_name = 'solicitud_form.html'
    instance = None
    
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['nombre_url'] = 'solicitud_bateria'
        context['opts'] = Solicitud_Bateria._meta,
        context['change'] = True,
        context['is_popup'] = False,
        context['save_as'] = False,
        context['has_delete_permission'] = False,
        context['has_add_permission'] = True,
        context['has_change_permission'] = False
        context['changeform_template'] = 'solicitud_form.html'
        context['nombre_formulario'] = 'Agregar Solicitud de Batería'
        context['mensaje'] = 'La solicitud fue adicionada correctamente.'
        context.update(admin.site.each_context(self.request))
        return context
    
    def dispatch(self, request, *args, **kwargs):
        self.instance = Solicitud_Bateria()
        return super(Agregar_Solicitud_Bateria, self).dispatch(request, *args, **kwargs)
    
    def get_form_instance( self, step ):
        return self.instance 
    
    def done(self, form_list, **kwargs):
        # Crear la solicitud
           
        # Recorrer los productos
        # crear solicitud
        
        form_data = [form.cleaned_data for form in form_list]
        
        print(form_data)
        
        datos_sol = form_data[0]
        
        solicitud = Solicitud_Bateria()
        
        solicitud.cliente = datos_sol['cliente']
        solicitud.observaciones = datos_sol['observaciones']
        solicitud.valor_estimado = datos_sol['valor_estimado']
        
        solicitud.save()
        
        print(solicitud)
        
        solicitud_proxy = form_data[1]
        
        l = list(solicitud_proxy.values())
        
        for bateria in Equipo.objects.filter(descripcion = l[0]):
            eproxy = Solicitud_Bateria_Proxy()
            eproxy.numsolicitud_id = solicitud.numsolicitud
            eproxy.idproducto_id= bateria.idproducto
            eproxy.cantidad = l[1]
            eproxy.save()
        
        return redirect('/')
    
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

