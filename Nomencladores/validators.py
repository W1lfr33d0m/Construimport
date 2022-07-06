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
        try:
            str(reeup)
            primer = int(reeup[0:2])
            punto1 = str(reeup[3:])
            segundo = int(reeup[4:])
            punto2 = str(reeup[5:])
            tercer = int(reeup[6:10])
        
            if primer.isalpha() or primer != 126:
                raise ValidationError('Los 3 primeros números no pueden contener letras y deben ser 126')
            elif  segundo.isalpha() or segundo != '0' :
                raise ValidationError('El segundo número no puede contener letras y debe ser 0')
            elif tercer.isalpha():
                raise ValidationError('El tercer número no puede contener letras')
            elif punto1 != '.' or punto2 != '.':
                raise ValidationError('Escriba correctamente el código')
            elif len(reeup) != 11:
                raise ValidationError(u'El código debe contener 11 dígitos.')
        except ValueError:
            raise ValidationError('El código reeup no puede contener letras')