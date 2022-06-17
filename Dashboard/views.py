from django.shortcuts import render
from multiprocessing import context
from re import template
from django.views.generic.base import TemplateView
from Solicitudes.models import *
from django.contrib.auth.mixins import LoginRequiredMixin
from django.http import JsonResponse
from .models import Order
from django.core import serializers
from Solicitudes.models import *
from django.contrib import admin
from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required
from django.contrib.admin.views.decorators import staff_member_required

# Create your views here.



# def dashboard_with_pivot(request):
#     return render(request, 'dashboard.html', {})

# def pivot_data(request):
#     dataset = Solicitud_Equipo.objects.all()
#     data = serializers.serialize('json', dataset)
#     return JsonResponse(data, safe=False)

# def index(request):
#     return render(request, 'dashboard/index.html')

class DashboardView(LoginRequiredMixin, TemplateView):
    template_name = 'dashboard.html'
    
    @method_decorator(login_required(login_url='/admin/login/'))
    def dispatch(self, *args, **kwargs):
        return super(DashboardView, self).dispatch(*args, **kwargs)
        
    def get_solicitudes_equipo(self):
        solicitudes_equipo = []
        eq = Solicitud_Equipo.objects.filter(estado = 'Pendiente').count()
        solicitudes_equipo.append(eq)
        return solicitudes_equipo
        
    def get_solicitudes_ppa(self):
        solicitudes_ppa = []
        ppa = Solicitud_PPA.objects.filter(estado = 'Pendiente').count()
        solicitudes_ppa.append(ppa)
        return solicitudes_ppa
        
    def get_solicitudes_neumatico(self):
        solicitudes_neumaticos = []
        nm = Solicitud_Neumatico.objects.filter(estado = 'Pendiente').count()
        solicitudes_neumaticos.append(nm)
        return solicitudes_neumaticos
    
    def get_solicitudes_bateria(self):
        solicitudes_baterias = []
        bt = Solicitud_Bateria.objects.filter(estado = 'Pendiente').count()
        solicitudes_baterias.append(bt)
        return solicitudes_baterias
    
    
    def get_context_data(self, **kwargs):
        context= super(DashboardView, self).get_context_data(**kwargs)   
        context.update(admin.site.each_context(self.request))       
        context['panel']='Panel de Administración'
        context['solicitudes_equipo'] = self.get_solicitudes_equipo()
        context['solicitudes_ppa'] = self.get_solicitudes_ppa()
        context['solicitudes_neumatico'] = self.get_solicitudes_neumatico()
        context['solicitudes_bateria'] = self.get_solicitudes_bateria()
        
        return context