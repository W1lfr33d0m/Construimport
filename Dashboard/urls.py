from django.urls import path

from Dashboard.admin import DashboardAdmin
from . import views
from .admin import Dashboard
from .views import DashboardView

# Registrar el espacio de nombres de esta aplicacion
app_name = 'Dashboard'
# Lista con los patrones URL de la aplicacion...
urlpatterns = [ 
    path('', DashboardView.as_view(), name='dashboard')
    # Reglas para las paginas de la aplicacion
]
