from django.urls import path

from Dashboard.admin import DashboardAdmin
from . import views
from .admin import Dashboard
from .views import *

# Registrar el espacio de nombres de esta aplicacion
app_name = 'Dashboard'
# Lista con los patrones URL de la aplicacion...
urlpatterns = [ 
    #path('', DashboardView.as_view(), name='dashboard')
    path('', dashboard_with_pivot, name='dashboard_with_pivot'),
    path('dashboard/', pivot_data, name='pivot_data'),
    # Reglas para las paginas de la aplicacion
]
