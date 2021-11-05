from django.db.models.base import Model
from typing import Reversible
from django.db import models
from django.db.models.fields import reverse_related
from django.utils.translation import gettext as _

# Create your models here.
class Pais(models.Model):
    CodigoPais = models.CharField(_("Código"), max_length=5)
    Pais = models.CharField(_("País"), max_length=50)
    

    class Meta:
        verbose_name = _("País")
        verbose_name_plural = _("Países")

    def __str__(self):
        return f"{self.CodigoPais} {self.Pais}"

    def get_absolute_url(self):
        return Reversible("Pais_detail", kwargs={"pk": self.pk})

class Cliente(models.Model):
    NumContratoCliente = models.CharField(_("Codigo"), max_length=50)
    NombreCliente = models.TextField(_("Nombre"), max_length=100)

    class Meta:
        verbose_name = _("Cliente")  
        verbose_name_plural = _("Clientes")
    def __str__(self):
        return f"{self.NumContratoCliente} {self.NombreCliente}"

    def get_absolute_url(self):
        return Reversible("cliente_detail", kwargs={"pk": self.pk})
class Proveedor(models.Model):
    NumContratoProveedor = models.CharField(_("Codigo"), max_length=50)
    NombreProveedor = models.TextField(_("Nombre"), max_length=100)
    Pais = models.ForeignKey("Pais", verbose_name=_("País"), on_delete=models.CASCADE)

    class Meta:
        verbose_name = _("Proveedor")  
        verbose_name_plural = _("Proveedores")
    def __str__(self):
        return f"{self.NumContratoProveedor} {self.NombreProveedor} {self.Pais}"

    def get_absolute_url(self):
        return Reversible("proveedor_detail", kwargs={"pk": self.pk})

class Producto(models.Model):

    CodigoProducto = models.CharField(_("Código"), max_length=50)
    DescripcionProducto = models.TextField(_("Descripción"))
    Precio = models.FloatField(_("Precio"))
    Cantidad =  models.FloatField(_("Cantidad"))

    class Meta:
        verbose_name = _("Producto")
        verbose_name_plural = _("Productos")

    def __str__(self):
        return f"{self.CodigoProducto} {self.DescripcionProducto} {self.Precio} {self.Cantidad}"

    def get_absolute_url(self):
        return reverse_related("producto_detail", kwargs={"pk": self.pk})
