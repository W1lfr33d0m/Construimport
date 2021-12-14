from django.contrib import admin
from django.shortcuts import render
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
    
def my_view(request, slug):
    """
    Display an individual :model:`Solicitudes.Solicitud`.

    **Context**

    ``Solicitud``
        An instance of :model:`Solicitudes.Solicitud`.

    **Template:**

    :template:`Solicitudes/my_template.html`
    """
    context = {'Solicitudes': Solicitud.objects.get(slug=slug)}
    return render(request, 'Solicitudes/my_template.html', context)