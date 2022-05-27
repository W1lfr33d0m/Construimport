from django.shortcuts import render
from multiprocessing import context
from re import template
from django.shortcuts import render
from django.views.generic.base import TemplateView
from Solicitudes.models import *
from django.contrib.auth.mixins import LoginRequiredMixin
# Create your views here.


def index(request):
    return render(request, 'dashboard/index.html')

class DashboardView(LoginRequiredMixin, TemplateView):
    template_name = 'dashboard.html'
        
    def get_context_data(self, **kwargs):
        context= super().get_context_data(**kwargs)
        
        Solicitudes_Equipo = Solicitud_Equipo.objects.all
        Solicitudes_PPA = Solicitud_PPA.objects.all
        Solicitudes_Neumatico = Solicitud_Neumatico.objects.all
        Solicitudes_Bateria = Solicitud_Bateria.objects.all
        
        
        total_solicitudes_equipo = Solicitudes_Equipo.count()
        total_solicitudes_ppa = Solicitudes_PPA.count()
        total_solicitudes_neumatico = Solicitudes_Neumatico.count()
        total_solicitudes_bateria = Solicitudes_Bateria.count()
	            
        
        context['panel']='Panel de Administración'
        context['solicitudes_equipo'] = total_solicitudes_equipo
        context['solicitudes_ppa'] = total_solicitudes_ppa
        context['solicitudes_neumatico'] = total_solicitudes_neumatico
        context['solicitudes_bateria'] = total_solicitudes_bateria
        
        return context