from django.shortcuts import render
from multiprocessing import context
from re import template
from django.shortcuts import render
from django.views.generic.base import TemplateView
from Solicitudes.models import *
# Create your views here.


def index(request):
    return render(request, 'dashboard/index.html')

class DashboardView(TemplateView):
    template_name = 'dashboard.html'
    
    def get_solicitudes_mensuales_equipo(self):
        solicitudes_equipo = []
        year = date.today().year
        for m in range(1, 13):
            eq = Solicitud_Equipo.objects.filter(fechasol__year = year, fechasol__month = m).count()
            solicitudes_equipo.append(eq)
        return solicitudes_equipo
        
    def get_solicitudes_mensuales_ppa(self):
        solicitudes_ppa = []
        year = date.today().year
        for m in range(1, 13):
            eq = Solicitud_PPA.objects.filter(fechasol__year = year, fechasol__month = m).count()
            solicitudes_ppa.append(eq)
        return solicitudes_ppa
        
    def get_solicitudes_mensuales_neumatico(self):
        solicitudes_neumatico = []
        year = date.today().year
        for m in range(1, 13):
            eq = Solicitud_Neumatico.objects.filter(fechasol__year = year, fechasol__month = m).count()
            solicitudes_neumatico.append(eq)
        return solicitudes_neumatico
    
    def get_solicitudes_mensuales_bateria(self):
        solicitudes_bateria = []
        year = date.today().year
        for m in range(1, 13):
            eq = Solicitud_Bateria.objects.filter(fechasol__year = year, fechasol__month = m).count()
            solicitudes_bateria.append(eq)
        return solicitudes_bateria
    
    def get_context_data(self, **kwargs):
        context= super().get_context_data(**kwargs)
        context['panel']='Panel de Administración'
        context['get_solicitudes_mensuales_equipo']=self.get_solicitudes_mensuales_equipo()
        context['get_solicitudes_mensuales_ppa']=self.get_solicitudes_mensuales_ppa()
        context['get_solicitudes_mensuales_neumatico']=self.get_solicitudes_mensuales_neumatico()
        context['get_solicitudes_mensuales_bateria']=self.get_solicitudes_mensuales_bateria()
        return context