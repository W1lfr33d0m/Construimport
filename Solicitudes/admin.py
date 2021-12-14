from django.contrib import admin
from .models import Solicitud, Cliente, Proveedor

# Register your models here.
@admin.register(Solicitud)
class SolicitudAdmin(admin.ModelAdmin):
    list_display = ('numsolicitud', 'numcontratocliente', 'cantidad', 'idproducto', 'fechasol', 'numcontratoproveedor')
    
@admin.register(Proveedor)
class ProveedorAdmin(admin.ModelAdmin):
    list_display = ('numcontratoproveedor', 'nomproveedor', 'idpais')
    
@admin.register(Cliente)
class ClienteAdmin(admin.ModelAdmin):
    list_display = ('numcontratocliente', 'nomcliente')