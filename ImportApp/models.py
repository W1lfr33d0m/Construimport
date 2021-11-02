from django.db.models.base import Model
from typing import Reversible
from django.db import models
from django.db.models.fields import reverse_related

# Create your models here.
class Cliente(models.Model):
    NumContratoCliente = models.models.CharField(_("Codigo"), max_length=50)
    NombreCliente = models.models.TextField(_("Nombre"), max_length=100)
    

    class Meta:
        verbose_name = ("Cliente")  
        verbose_name_plurl = ("Clientes")
    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return Reversible("cliente_detail", kwargs={"pk": self.pk})
class Proveedor(models.Model):
    NumContratoProveedor = models.models.CharField(_("Codigo"), max_length=50)
    NombreProveedor = models.models.TextField(_("Nombre"), max_length=100)
    Pais = models.TextChoices 

    class Meta:
        verbose_name = ("Proveedor")  
        verbose_name_plurl = ("Proveedores")
    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return Reversible("proveedor_detail", kwargs={"pk": self.pk})

class Producto(models.Model):

    CodigoProducto = models.CharField(("Codigo"), max_length=50)
    DescripcionProducto = models.TextField("")
    Precio = models.FloatField("")
    Cantidad =  models.IntegerField("")

    class Meta:
        verbose_name = ("Producto")
        verbose_name_plural = ("Productos")

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse_related("producto_detail", kwargs={"pk": self.pk})
