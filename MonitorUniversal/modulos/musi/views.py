from django.shortcuts import render, redirect, get_object_or_404
from .models import *
from modulos.nomencladores.zona import *
from .forms import *
from modulos.nomencladores.entidad import *
from django.contrib import messages
from django.contrib.auth import authenticate, login
from django.core.paginator import Paginator
from django.http import Http404
from django.contrib.auth.decorators import login_required, permission_required
from django.views import generic

# Create your views here.

def inicio(request):
    return render(request, 'musi/inicio.html')

def correo(request):
    return render(request, 'musi/modulos_musi/correo.html')

def internet(request):
    return render(request, 'musi/modulos_musi/internet.html')

def modulos(request):
    return render(request, 'musi/modulos.html')

def monitoreos(request):
    return render(request, 'musi/monitoreos.html')

def reportes(request):
    return render(request, 'musi/reportes.html')

def registrar(request):
    data = {
        'form': CustomUserCreationForm()
    }
    if request.method == 'POST':
        formulario = CustomUserCreationForm(data = request.POST)
        if formulario.is_valid():
            formulario.save()
            user = authenticate(username = formulario.cleaned_data["username"], password = formulario.cleaned_data["password1"])
            login(request, user)
            messages.success(request, "Te has registrado correctamente.")
            return redirect(to = "inicio")
        data["form"] = formulario
    return render(request, 'registration/registrar.html', data)

# -------------------------------------------------------------------------------------------------

# CRUD Entidad

def entidad(request):
    provincias = Provincia.objects.all()
    data = {
        'lista_provincias': provincias
    }
    return render(request, 'musi/entidad.html', data)

@permission_required('musi.add_entidad')
def agregar_entidad(request):
    data = {
        'form': EntidadForm()
    }
    if request.method == 'POST':
        formulario = EntidadForm(data = request.POST)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Guardado correctamente.")
        else:
            data["form"] = formulario
    return render(request, 'musi/entidad/agregar.html', data)

def listar_entidad(request, provincia):
    entidades = Entidad.objects.filter(provincia = provincia)
    page = request.GET.get('page', 1)
    try:
        paginator = Paginator(entidades, 5)
        entidades = paginator.page(page)
    except:
        raise Http404
    data = {
        'entity': entidades,
        'paginator': paginator
    }
    return render(request, 'musi/entidad/listar.html', data)

@permission_required('musi.change_entidad')
def modificar_entidad(request, id, provincia):
    entidad = get_object_or_404(Entidad, id = id, provincia = provincia)
    data = {
        'form': EntidadForm(instance = entidad),
        'provincia': provincia
    }
    if request.method == 'POST':
        formulario = EntidadForm(data = request.POST, instance = entidad)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Modificado correctamente.")
            return redirect(to = "listar_entidad", provincia = provincia)
        data["form"] = formulario
    return render(request, 'musi/entidad/modificar.html', data)

@permission_required('musi.delete_entidad')
def eliminar_entidad(request, provincia, id):
    entidad = get_object_or_404(Entidad, id = id, provincia = provincia)
    entidad.delete()
    messages.success(request, "Eliminado correctamente.")
    return redirect(to = "listar_entidad", provincia = provincia)

def detallar_entidad(request, id, provincia):
    entidad = get_object_or_404(Entidad, id = id, provincia = provincia)
    data = {
        'entidad': entidad
    }
    return render(request, 'musi/entidad/detallar.html', data)

# Fin CRUD Entidad

# ---------------------------------------------------------------------------------------

# CRUD Usuario

def usuario(request):
    usuario = Usuario.objects.all()
    data = {
        'usuario': usuario
        }
    return render(request, 'musi/usuario.html', data)

@permission_required('musi.add_usuario')
def agregar_usuario(request):
    data = {
        'form': UsuarioForm()
    }
    if request.method == 'POST':
        formulario = UsuarioForm(data = request.POST)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Guardado correctamente.")
        else:
            data["form"] = formulario
    return render(request, 'musi/usuario/agregar.html', data)

def listar_usuario(request, provincia, entidad):
    usuarios = Usuario.objects.filter(provincia = provincia, entidad = entidad)
    page = request.GET.get('page', 1)
    try:
        paginator = Paginator(usuarios, 10)
        usuarios = paginator.page(page)
    except:
        raise Http404
    data = {
        'entity': usuarios,
        'paginator': paginator
    }
    return render(request, 'musi/usuario/listar.html', data)