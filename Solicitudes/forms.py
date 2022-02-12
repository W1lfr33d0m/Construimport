from django import forms
from django.core.exceptions import ValidationError
from django.utils.translation import gettext_lazy as _
from .models import Solicitud

class SolicitudForm(forms.ModelForm):
    class Meta:
        model = Solicitud
        fields = '__all__'
        Solicitud.aprobada = forms.CheckboxInput
        
def validate_cantidad(cantidad):
        if cantidad <= 0:
            raise ValidationError(
            _('%(cantidad)s no es correcto'),
            params={'cantidad': cantidad},
        )
        