import enum
import re

from django.core import validators
from django.forms import ValidationError
from django.utils.deconstruct import deconstructible
from django.utils.translation import gettext_lazy as _


@deconstructible
class ASCIIUsernameValidator(validators.RegexValidator):
    regex = r'^[\w.@+-]+\Z'
    message = _(
        'Enter a valid username. This value may contain only English letters, '
        'numbers, and @/./+/-/_ characters.'
    )
    flags = re.ASCII


@deconstructible
class UnicodeUsernameValidator(validators.RegexValidator):
    regex = r'^[\w.@+-]+\Z'
    message = _(
        'Escriba el nombre correcto, solo puede contener letras, '
        'números, y @/./+/-/_ .'
    )
    flags = 0


deconstructible
class UnicodeFirst_nameValidator(validators.RegexValidator):
    regex = r'^[A-Za-záéóíñ ]+\Z'
    message = _(
        'Escriba el nombre correcto, solo puede contener letras '
    )
    flags = 0
    
@deconstructible
class UnicodenameValidator(validators.RegexValidator):
    regex = r'^[A-Z a-z áéóíñ 1-9 ]+\Z'
    message = _(
        'Escriba correctamente el nombre '
    )
    flags = 0
    
@deconstructible
class UnicodePersonNameValidator(validators.RegexValidator):
    regex = r'^[A-Z a-z áéóíñ]+\Z'
    message = _(
        'Escriba correctamente el nombre '
    )
    flags = 0
    
@deconstructible
class UnicodProveedorValidator(validators.RegexValidator):
    regex = r'^[A-Z a-z áéóí 1-9 . & ()]+\Z'
    message = _(
        'Escriba correctamente el nombre '
    )
    flags = 0
    
@deconstructible
class UnicodeCodeValidator(validators.RegexValidator):
    regex = r'^[A-Z]+\Z' '-' r'^[0-9]+\Z'
    message = _(
        'Escriba correctamente el codigo '
    )
    flags = 0
    
# @deconstructible
# class UnicodeREEUPValidator(validators.RegexValidator):
#     regex =  r'^[0-9 .]+\Z'
#     message = _(
#         'Escriba correctamente el codigo '
#     )
#     flags = 0

class REEUPValidator():
    
    def reeup_validator(reeup):
            reeup = str(reeup)
            punto1 = str(reeup[3:4])
            segundo = reeup[4:5]
            punto2 = str(reeup[5:6])
            tercer = reeup[6:]
            if len(reeup) != 11:
                raise ValidationError(u'El código debe contener 11 dígitos.')
            for i in reeup:
                if i.isalpha() or i=="!" or i=='?' or i== ';' or i== ',' or i=='/' or i== '@' or i=='#' or i=='#' or i =='%':
                    raise ValidationError("No puede contener letras ni caracteres especiales")
            if reeup[3] != '.' or reeup[5] != '.':
                raise ValidationError('Debe escribir punto en la cuarta y sexta posición')
            primer = str(reeup[0:3])
            for i in primer:
                if i.isalpha():
                    raise ValidationError('Los 3 primeros valores deben ser un números')
            for i in segundo:
                if i.isalpha():
                    raise ValidationError('El quinto valor debe ser un número')
            for i in tercer:
                if i.isalpha():
                    raise ValidationError('Los 4 últimos valores deben ser un números')
                
class MINCEXValidator():
    
    def codmincex_validator(codmincex):
            codmincex = str(codmincex)
            
            if len(codmincex) != 7:
                raise ValidationError(u'El código debe contener 7 dígitos.')
            for i in codmincex:
                if i=="!" or i=='?' or i== ';' or i== ',' or i=='/' or i== '@' or i=='#' or i=='#' or i =='%':
                    raise ValidationError("No puede contener caracteres especiales, excepto -")
            if not codmincex[0].isalpha() or not codmincex[1].isalpha() or codmincex[0].islower() or codmincex[1].islower():
                raise ValidationError('Debe escribir letras mayúsculas en las 2 primeras posiciones')
            if codmincex[2] != '-':
                raise ValidationError('El tercer caracter debe ser -')
            if not codmincex[3:9].isnumeric():
                raise ValidationError('Debe escribir números a partir de la cuarta posición')
            
class ProductoValidator():
    
    def idproducto_validator(idproducto):
            idproducto = str(idproducto)
            
            if len(idproducto) > 15:
                raise ValidationError('Solo puede escribir hasta 15 caracteres')
            
            for i in idproducto:
                if i=="!" or i=='?' or i== ';' or i== ',' or i=='/' or i== '@' or i=='#' or i=='#' or i =='%' or i == '.':
                    raise ValidationError("No puede contener caracteres especiales, excepto -")
                
class TelefonoValidator():

    def telefono_validator(telefono):
        
            telefono = str(telefono)
            if len(telefono) > 8 or len(telefono) < 8:
                raise ValidationError('El teléfono es incorrecto')
            for i in telefono:
                if not i.isnumeric():
                    raise ValidationError('Solo puede introducir números')