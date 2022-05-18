from django.urls import include, path, reverse_lazy, re_path
from . import views
from django.views.generic import CreateView
from . import forms
from Solicitudes.views import *
from Solicitudes.views_create import *
# Registrar el espacio de nombres de esta aplicacion
app_name = 'Solicitudes'
# Lista con los patrones URL de la aplicacion...
urlpatterns = [
    path('<int:id>/generatePDF/', views.generatePDF, name='generatePDF'),
    #path('solicitud_equipo/add/', Solicitud_Equipo_FormView.as_view(), name='add'),
    path('solicitud_equipo/add/', Agregar_Solicitud_Equipo.as_view(), name='solicitud_equipo')
    # Reglas para las paginas de la aplicacion
]
