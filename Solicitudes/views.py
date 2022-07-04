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
    form_list = (('Datos Generales', FSolicitud_Equipo), 
                 ( 'Equipos', FSolicitud_Equipo_Proxy),03 
                 ('Confirmar', FSolicitud_Equipo_Confirmar)
                )
    #fields = ['numcontratocliente', 'observaciones', 'valor_estimado']
    template_name = 'solicitud_form.html'
    instance = None
    
    # def get_form(self, step=None, data=None, files=None):
    #     form = super().get_form(step, data, files)
    #     if step is None:
    #         step = self.steps.current
    #     if step == '2':
    #         data = self.get_cleaned_data_for_step('0')['cliente']
    #         form.fields['cliente'].label = data
    #     return form
    
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
                
        datos_sol = form_data[0]
        
        solicitud = Solicitud_Equipo()
        
        solicitud.cliente = datos_sol['cliente']
        solicitud.observaciones = datos_sol['observaciones']
        solicitud.valor_estimado = datos_sol['valor_estimado']
        solicitud.plazo = datos_sol['plazo']
        solicitud.fechasol = timezone.now()
        if solicitud.plazo == '3 días':
            delta1 = timezone.timedelta(days=3)
            solicitud.fecha_venc = solicitud.fechasol + delta1
            if solicitud.fecha_venc.weekday() == 5:
                solicitud.fecha_venc = solicitud.fecha_venc + timezone.timedelta(days=2)
            elif solicitud.fecha_venc.weekday() == 6:
                solicitud.fecha_venc = solicitud.fecha_venc + timezone.timedelta(days=1)    
        elif solicitud.plazo == '7 días':
            delta2 = timezone.timedelta(days=7)
            solicitud.fecha_venc = solicitud.fechasol + delta2
            if solicitud.fecha_venc.weekday() == 5:
                solicitud.fecha_venc = solicitud.fecha_venc + timezone.timedelta(days=2)
            elif solicitud.fecha_venc.weekday() == 6:
                solicitud.fecha_venc = solicitud.fecha_venc + timezone.timedelta(days=1) 
        solicitud.save()
                
        solicitud_proxy = form_data[1]
        
        l = list(solicitud_proxy.values())
        
        count = 0
        
        for equipo in Equipo.objects.filter(descripcion = l[0]):
            eproxy = Solicitud_Equipo_Proxy()
            eproxy.numsolicitud_id = solicitud.numsolicitud
            eproxy.idproducto_id = equipo.idproducto
            eproxy.cantidad = l[1]
            for p in Proveedor.objects.filter(equipos = eproxy.idproducto):
                print(p.activo)
                if p.activo == True:
                    eproveedor = Solicitud_Equipo_Proveedor()
                    eproveedor.numsolicitud_id = solicitud.numsolicitud
                    eproveedor.codmincex_id = p.codmincex
                    eproveedor.save()
                    count += 1
            eproxy.save()
        print(count)
        if count >= 2:
            messages.success(self.request,'Se agregó correctamente la Solicitud')
        else:
            solicitud.delete()
            messages.error(self.request, 'No hay suficientes proveedores para procesar la solicitud')
        return redirect('/admin/Solicitudes/solicitud_equipo/')  
        

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
        context['nombre_url'] = 'solicitud_neumatico'
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
            nproxy = Solicitud_Neumatico_Proxy()
            nproxy.numsolicitud_id = solicitud.numsolicitud
            nproxy.idproducto_id= neumatico.idproducto
            nproxy.cantidad = l[1]
            nproxy.save()
        
        return redirect('/admin/Solicitudes/solicitud_neumatico')

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
        
        for bateria in Bateria.objects.filter(descripcion = l[0]):
            bproxy = Solicitud_Bateria_Proxy()
            bproxy.numsolicitud_id = solicitud.numsolicitud
            bproxy.idproducto_id= bateria.idproducto
            bproxy.cantidad = l[1]
            bproxy.save()
        
        return redirect('/admin/Solicitudes/solicitud_bateria')
    
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

