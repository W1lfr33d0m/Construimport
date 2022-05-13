from django.urls import include, path, reverse_lazy, re_path
from . import views
from django.views.generic import CreateView
from . import forms
from .views import *
from .views_create import *
# Registrar el espacio de nombres de esta aplicacion
app_name = 'Solicitudes'
# Lista con los patrones URL de la aplicacion...
urlpatterns = [
    path('<int:id>/generatePDF/', views.generatePDF, name='generatePDF'),
    path('solicitud_equipo/add', Solicitud_Equipo_FormView.as_view(), name='solicitud_equipo_form'),
    # Reglas para las paginas de la aplicacion
]
