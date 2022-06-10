from tkinter import N
from django.shortcuts import render
from Nomencladores.admin import ProveedorResource
from import_export import resources
from xlrd import open_workbook_xls
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
# Create your views here.

class Agregar_Proveedor(SessionWizardView):
    model = Proveedor
    form_list = [FProveedor,  FProveedor_Casa_matriz, FProveedor_Sucursal, FProveedor_Marca, FProveedor_Equipos, FProveedor_PPA, FProveedor_Neumaticos, FProveedor_Baterias]
    #fields = ['numcontratocliente', 'observaciones', 'valor_estimado']
    template_name = 'proveedor_form.html'
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
        context['changeform_template'] = 'proveedor_form.html'
        context['nombre_formulario'] = 'Agregar Proveedor'
        context['mensaje'] = 'El Proveedor fue adicionada correctamente.'
        context.update(admin.site.each_context(self.request))
        # if self.steps.current == 1:
        #     context.update({
        #         'FSolicitud_Equipo_Proxy': FSolicitud_Equipo_ProxyFormset()
        #     })
        return context
    
    def dispatch(self, request, *args, **kwargs):
        self.instance = Proveedor()
        return super(Agregar_Proveedor, self).dispatch(request, *args, **kwargs)
    
    def get_form_instance( self, step ):
        return self.instance 
    
   
    def done(self, form_list, **kwargs):
               
        form_data = [form.cleaned_data for form in form_list]
        print(form_data)
        proveedor = Proveedor()
        datos_proveedor = form_data[0]
        
        proveedor.codmincex = datos_proveedor['codmincex']
        proveedor.nomproveedor = datos_proveedor['nomproveedor']
        proveedor.codigopais = datos_proveedor['codigopais']
        proveedor.clasificacion = datos_proveedor['clasificacion']
        proveedor.save()        
        
        print(proveedor.codmincex)
        
        fcasa_matriz = form_data[1]
        fsucursal = form_data[2]
        fproductos = form_data[3]
        print(fcasa_matriz)
        print(fsucursal)
        lcasa = list(fcasa_matriz.values())
        lsucursal = list(fsucursal.values())
        lproductos = list(fproductos.values())
        
        casa_matriz = Casa_Matriz()
        casa_matriz.direccion = fcasa_matriz['direccion']
        casa_matriz.email = fcasa_matriz['email']
        casa_matriz.telefono = fcasa_matriz['telefono']
        casa_matriz.contacto = fcasa_matriz['contacto']
        casa_matriz.sitio_web = fcasa_matriz['sitio_web']
        casa_matriz.codmincex_id = proveedor.codmincex
        casa_matriz.save()
        
        sucursal = Sucursal_Cuba()
        sucursal.direccion = fsucursal['direccion']
        sucursal.email = fsucursal['email']
        sucursal.telefono = fsucursal['telefono']
        sucursal.contacto = fsucursal['contacto']
        sucursal.carnet_trabajo = fsucursal['carnet_trabajo']
        sucursal.codmincex_id = proveedor.codmincex
        sucursal.save()
            
        
        for equipo in Equipo.objects.filter(descripcion = lproductos[0]):
          proveedor.equipos_id = equipo.idproducto
          proveedor.save()
          
        for ppa in PPA.objects.filter(descripcion = lproductos[0]):
              proveedor.ppa_id = ppa.idproducto
              proveedor.save()
        
        for neumatico in Neumatico.objects.filter(descripcion = lproductos[0]):
              proveedor.neumaticos_id = neumatico.idproducto
              proveedor.save()
        
        for bateria in Bateria.objects.filter(descripcion = lproductos[0]):
              proveedor.bateria_id = bateria.idproducto
              proveedor.save()
        
        
         
        messages.success(self.request,'Se agregó correctamente el Proveedor')
        
        return redirect('/Nomencladores/proveedor/')

    def form_valid(self, form):
        return super().form_valid(form)
