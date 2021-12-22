from django.forms import ValidationError
from django.core.validators import validate_ipv46_address, RegexValidator, EmailValidator

def validar_nombre(nombre):
    if not nombre.isalpha():
        raise ValidationError("Este campo solo debe contener letras.")
    return nombre

def validar_numero(numero):
    if numero.isalpha():
        raise ValidationError("Este campo solo debe contener números.")
    return numero

def validar_ip(ip):
    try:
        validate_ipv46_address(ip)
    except ValidationError:
        raise ValidationError("Por favor inserte una dirección de IP válida.")