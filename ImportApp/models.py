from django.db.models.base import Model
from typing import Reversible
from django.db import models
from django.db.models.fields import reverse_related
from django.utils.translation import gettext as _

# Create your models here.
class Cliente(models.Model):
    NumContratoCliente = models.models.CharField(_("Codigo"), max_length=50)
    NombreCliente = models.models.TextField(_("Nombre"), max_length=100)


    class Meta:
        verbose_name = _("Cliente")  
        verbose_name_plurl = _("Clientes")
    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return Reversible("cliente_detail", kwargs={"pk": self.pk})
class Proveedor(models.Model):
    NumContratoProveedor = models.models.CharField(_("Codigo"), max_length=50)
    NombreProveedor = models.models.TextField(_("Nombre"), max_length=100)
    Pais = models.TextChoices 

    class Meta:
        verbose_name = _("Proveedor")  
        verbose_name_plurl = _("Proveedores")
    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return Reversible("proveedor_detail", kwargs={"pk": self.pk})

class Producto(models.Model):

    CodigoProducto = models.CharField(_("Codigo"), max_length=50)
    DescripcionProducto = models.TextField(_(""))
    Precio = models.FloatField(_(""))
    Cantidad =  models.IntegerField(_(""))

    class Meta:
        verbose_name = _("Producto")
        verbose_name_plural = _("Productos")

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse_related("producto_detail", kwargs={"pk": self.pk})
