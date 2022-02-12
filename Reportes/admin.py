from django.contrib import admin
from Reportes.models import MyReport
from Solicitudes.models import Solicitud

# Register your models here.
admin.register(Solicitud, MyReport)


