from django.urls import path
from .views import *

urlpatterns = [
    path('', inicio, name = "inicio"),
    path('modulos_musi/correo/', correo, name = "correo"),
    path('modulos_musi/internet/', internet, name = "internet"),
    path('entidad/', entidad, name = "entidad"),
    path('modulos/', modulos, name = "modulos"),
    path('monitoreos/', monitoreos, name = "monitoreos"),
    path('reportes/', reportes, name = "reportes"),
    path('registrar', registrar, name = "registrar"),
    path('entidad/agregar/', agregar_entidad, name = "agregar_entidad"),
    path('entidad/listar/<int:provincia>/', listar_entidad, name = "listar_entidad"),
    path('entidad/modificar/<int:provincia>/<id>/', modificar_entidad, name = "modificar_entidad"),
    path('entidad/eliminar/<int:provincia>/<id>/', eliminar_entidad, name = "eliminar_entidad"),
    path('entidad/detallar/<int:provincia>/<id>/', detallar_entidad, name = "detallar_entidad"),
    path('usuario/', usuario, name = "usuario"),
    path('usuario/agregar/', agregar_usuario, name = "agregar_usuario"),
    #path('usuario/modificar/', modificar_usuario, name = "modificar_usuario"),
    path('entidad/detallar/<int:provincia>/<int:entidad>/usuario/listar/', listar_usuario, name = "listar_usuario"),
    #path('usuario/eliminar/', eliminar_usuario, name = "eliminar_usuario"),
]    
