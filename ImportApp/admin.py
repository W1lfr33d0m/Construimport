from django.contrib import admin
from .models import Pais, Producto, Proveedor, Cliente
# Register your models here.

@admin.register(Pais)
class ProductoAdmin(admin.ModelAdmin):
    list_display = ('CodigoPais', 'Pais')
    search_fields = ('CodigoPais', 'Pais')
    list_filter =  ('CodigoPais', )

@admin.register(Producto)
class ProductoAdmin(admin.ModelAdmin):
    list_display = ('CodigoProducto', 'DescripcionProducto', 'Precio', 'Cantidad')
    search_fields = ('CodigoProducto', 'DescripcionProducto')
    list_filter =  ('CodigoProducto', )


@admin.register(Proveedor)
class ProveedorAdmin(admin.ModelAdmin):
    list_display = ('NumContratoProveedor', 'NombreProveedor', 'Pais')
    search_fields = ('NumContratoProveedor', 'NombreProveedor')
    list_filter =  ('NumContratoProveedor', )

    
@admin.register(Cliente)
class ClienteAdmin(admin.ModelAdmin):
    list_display = ('NumContratoCliente', 'NombreCliente')
    search_fields = ('NumContratoCliente', 'NombreCliente')
    list_filter = ('NumContratoCliente',)
