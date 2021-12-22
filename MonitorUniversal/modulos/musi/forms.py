from django import forms 
from modulos.nomencladores.entidad import Entidad
from django.forms import ValidationError
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from .models import Pc, Usuario
from modulos.validaciones.validators import *
from phonenumber_field.formfields import PhoneNumberField
from modulos.nomencladores.zona import *

class EntidadForm(forms.ModelForm):

    nombre = forms.CharField(min_length = 3, max_length = 30, widget = forms.TextInput(attrs = {'placeholder': 'Escriba el nombre.'}))
    prefijo = forms.CharField(min_length = 2, max_length = 10, widget = forms.TextInput(attrs = {'placeholder': 'Escriba el prefijo.'}))
    telefono = PhoneNumberField(widget = forms.TextInput(attrs = {'placeholder': 'Escriba el teléfono.'}))
    rango_inicial_ip = forms.CharField(validators = [validar_ip], widget = forms.TextInput(attrs = {'placeholder': 'Escriba el IP inicial.'}))
    rango_final_ip = forms.CharField(validators = [validar_ip], widget = forms.TextInput(attrs = {'placeholder': 'Escriba el IP final.'}))
    nombre_jefe_informatico = forms.CharField(max_length = 20, validators = [validar_nombre], widget = forms.TextInput(attrs = {'placeholder': 'Escriba el nombre.'}))
    apellido_jefe_informatico = forms.CharField(max_length = 40, validators = [validar_nombre], widget = forms.TextInput(attrs = {'placeholder': 'Escriba el apellido.'}))
    nombre_admin_redes = forms.CharField(max_length = 20, validators = [validar_nombre], widget = forms.TextInput(attrs = {'placeholder': 'Escriba el nombre.'}))
    apellido_admin_redes = forms.CharField(max_length = 40, validators = [validar_nombre], widget = forms.TextInput(attrs = {'placeholder': 'Escriba el apellido.'}))

    class Meta:

        model = Entidad
        fields = '__all__'

    def clean_nombre(self):
        nombre = self.cleaned_data["nombre"]
        existe = Entidad.objects.filter(nombre__iexact = nombre).exists()
        if existe:
            raise ValidationError("Este nombre ya existe.")
        return nombre      
            
class CustomUserCreationForm(UserCreationForm):

    class Meta:

        model = User
        fields = ["first_name", "last_name", "username", "email", "password1", "password2"]

class UsuarioForm(forms.ModelForm):

    nombre = forms.CharField(min_length = 3, max_length = 20, validators = [validar_nombre], widget = forms.TextInput(attrs = {'placeholder': 'Escriba el nombre.'}))
    apellido = forms.CharField(min_length = 1, max_length = 40, validators = [validar_nombre], widget = forms.TextInput(attrs = {'placeholder': 'Escriba el apellido.'}))
    telefono = PhoneNumberField(widget = forms.TextInput(attrs = {'placeholder': 'Escriba el teléfono.'}))
    correo = forms.EmailField(widget = forms.EmailInput(attrs = {'placeholder': 'Escriba el correo.'}))
    nombre_usuario = forms.CharField(min_length = 5, max_length = 10, validators = [validar_nombre], widget = forms.TextInput(attrs = {'placeholder': 'Escriba el nombre.'}))

    class Meta:

        model = Usuario
        fields = '__all__'

    def clean_nombre_usuario(self):
        nombre_usuario = self.cleaned_data["nombre_usuario"]
        existe = Usuario.objects.filter(nombre_usuario__iexact = nombre_usuario).exists()
        if existe:
            raise ValidationError("Este nombre de usuario ya existe.")
        return nombre_usuario

class PcForm(forms.ModelForm):

    nombre = forms.CharField(min_length = 5, max_length = 10, validators = [validar_nombre], widget = forms.TextInput(attrs = {'placeholder': 'Escriba el nombre.'}))
    tarjeta_red = forms.CharField(min_length = 10, max_length = 20)
    ip = forms.CharField(validators = [validar_ip], widget = forms.TextInput(attrs = {'placeholder': 'Escriba el IP.'}))

    class Meta:

        model = Pc
        fields = '__all__'
