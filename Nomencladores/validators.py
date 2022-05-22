import re

from django.core import validators
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
class UnicodeCodeValidator(validators.RegexValidator):
    regex = r'^[A-Z]+\Z' '-' r'^[0-9]+\Z'
    message = _(
        'Escriba correctamente el codigo '
    )
    flags = 0
    
@deconstructible
class UnicodeREEUPValidator(validators.RegexValidator):
    regex =  r'^[0-9]+\Z' '.' r'^[0-9]+\Z'
    message = _(
        'Escriba correctamente el codigo '
    )
    flags = 0