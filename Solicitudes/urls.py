from django.urls import path
from . import views
from . import forms
from .views import generatePDF
# Registrar el espacio de nombres de esta aplicacion
app_name = 'Solicitudes'
# Lista con los patrones URL de la aplicacion...
urlpatterns = [
    path('<int:id>/generatePDF/', views.generatePDF, name='generatePDF'),
    # Reglas para las paginas de la aplicacion
]
