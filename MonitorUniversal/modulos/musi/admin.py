from django.contrib import admin
from .models import *
from modulos.nomencladores.entidad import Entidad
from modulos.nomencladores.servidor import Servidor
from modulos.nomencladores.protocolo import Protocolo
from modulos.nomencladores.puerto import Puerto
from modulos.nomencladores.zona import *
from .forms import *
from modulos.validaciones.validators import *

class UsuarioAdmin(admin.ModelAdmin):

    list_display = ["nombre", "correo", "telefono", "entidad",
                "nombre_usuario", "cargo", "tipo_usuario",
                "provincia", "municipio"
    ]
    search_fields = ["nombre", "provincia", "municipio", "entidad"]
    list_filter = ["entidad", "cargo", "tipo_usuario", "provincia", "municipio"]
    list_editable =  ["entidad", "cargo", "tipo_usuario", "provincia", "municipio"]
    list_per_page = 10
    form = UsuarioForm

class EntidadAdmin(admin.ModelAdmin):

    list_display = ["nombre", "telefono", "de_cimex",
                "rango_inicial_ip", "rango_final_ip",
                "provincia", "municipio"
    ]
    search_fields = ["nombre", "provincia", "municipio"]
    list_filter = ["de_cimex", "municipio", "provincia"]
    list_per_page = 10
    form = EntidadForm

class SitioWebAdmin(admin.ModelAdmin):

    list_display = ["nombre", "ip", "host", "url"]
    search_fields = ["nombre"]
    list_per_page = 10

class ServidorAdmin(admin.ModelAdmin):

    list_display = ["nombre", "ip", "interno",
                "local", "estante", "grupo", "os"
    ]
    search_fields = ["nombre", "grupo", "local"]
    list_filter = ["grupo", "local", "estante", "interno"]
    list_per_page = 10

class TraficoCorreoAdmin(admin.ModelAdmin):

    list_display = ["fecha", "usuario", "servidor",
                "asunto", "cant_destino", "tamagno",
                "evento", "gestor_correo"
    ]
    search_fields = ["usuario", "servidor", "asunto"]
    list_filter = ["fecha", "usuario", "servidor", "gestor_correo"]
    list_per_page = 10

class TraficoInternetAdmin(admin.ModelAdmin):

    list_display = ["fecha", "usuario", "protocolo",
                "puerto", "sitio_web", "tipo_mime",
                "bytes_recibidos", "bytes_enviados"
    ]
    search_fields = ["usuario", "sitio_web"]
    list_filter = ["fecha", "usuario", "sitio_web", "tipo_mime"]
    list_per_page = 10

class ProvinciaAdmin(admin.ModelAdmin):

    list_display = ["nombre", "codigo"]
    search_fields = ["nombre"]
    list_filter = ["nombre"]
    list_per_page = 10

class MunicipioAdmin(admin.ModelAdmin):

    list_display = ["nombre", "provincia", "codigo"]
    search_fields = ["nombre", "provincia"]
    list_filter = ["nombre", "provincia"]
    list_per_page = 10

class PcAdmin(admin.ModelAdmin):

    list_display = ["nombre", "ip", "tarjeta_red"]
    search_fields = ["nombre", "ip", "tarjeta_red"]
    list_per_page = 10

# Register your models here.

admin.site.register(Usuario, UsuarioAdmin)
admin.site.register(Evento)
admin.site.register(GestorCorreo)
admin.site.register(TraficoCorreo, TraficoCorreoAdmin)
admin.site.register(TraficoInternet, TraficoInternetAdmin)
admin.site.register(SitioWeb, SitioWebAdmin)
admin.site.register(Entidad, EntidadAdmin)
admin.site.register(Servidor, ServidorAdmin)
admin.site.register(Protocolo)
admin.site.register(Puerto)
admin.site.register(Provincia, ProvinciaAdmin)
admin.site.register(Municipio, MunicipioAdmin)
admin.site.register(Pc, PcAdmin)
