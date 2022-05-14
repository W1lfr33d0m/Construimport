from django.urls import path

from .admin import *
from . import views
from .views import Reporte_SolicitudesView

# Registrar el espacio de nombres de esta aplicacion
app_name = 'Reportes'
# Lista con los patrones URL de la aplicacion...
urlpatterns = [ 
    path('reporte_solicitud/', Reporte_SolicitudesView.as_view(), name='reportes')
    # Reglas para las paginas de la aplicacion
]
