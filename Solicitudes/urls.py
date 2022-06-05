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
    path('solicitud_equipo/add/', Agregar_Solicitud_Equipo.as_view([FSolicitud_Equipo, FSolicitud_Equipo_Proxy, FSolicitud_Equipo_Confirmar]), name='solicitud_equipo'),
    path('solicitud_ppa/add/', Agregar_Solicitud_PPA.as_view([FSolicitud_PPA, FSolicitud_PPA_Proxy]), name='solicitud_equipo'),
    path('solicitud_bateria/add/', Agregar_Solicitud_Neumatico.as_view([FSolicitud_Neumatico, FSolicitud_Neumatico_Proxy]), name='solicitud_equipo'),
    path('solicitud_bateria/add/', Agregar_Solicitud_Bateria.as_view([FSolicitud_Bateria, FSolicitud_Bateria_Proxy]), name='solicitud_equipo'),
    
    # Reglas para las paginas de la aplicacion
]
