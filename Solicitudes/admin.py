from django.contrib import admin
from .models import Solicitud, Cliente, Proveedor

# Register your models here.
@admin.register(Solicitud)
class SolicitudAdmin(admin.ModelAdmin):
    list_display = ('numsolicitud', 'numcontratocliente', 'cantidad', 'idproducto', 'fechasol', 'numcontratoproveedor')
    