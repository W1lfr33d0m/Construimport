# Copyright (c) 2009 Guilherme Semente and contributors
#
# This file is part of Django Smuggler.
#
# Django Smuggler is free software under terms of the GNU Lesser
# General Public License version 3 (LGPLv3) as published by the Free
# Software Foundation. See the file README for copying conditions.

from django.urls import include, path, reverse_lazy, re_path
from Nomencladores import views
from django.views.generic import CreateView
from Nomencladores import forms
from .views import *

app_name = 'Nomencladores'

urlpatterns = [
    # path('proveedor/add/', Agregar_Proveedor.as_view([
    #     FProveedor,  
    #     FProveedor_Casa_matriz, 
    #     FProveedor_Sucursal, 
    #     FProveedor_Marca,
    #     FProveedor_Equipos, 
    #     FProveedor_PPA, 
    #     FProveedor_Neumaticos, 
    #     FProveedor_Baterias]), 
    #      name='agregar_proveedor'
    #      ),
    
]

