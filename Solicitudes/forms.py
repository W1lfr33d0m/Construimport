from django import forms
#from formtools.wizard import FormWizard
from formtools.wizard.views import SessionWizardView
from django.shortcuts import render
from django.core.exceptions import ValidationError
from django.utils.translation import gettext_lazy as _
from .models import *


class FSolicitud_Equipo(forms.ModelForm):
    
    
    class Meta:
        model =  Solicitud_Equipo
        fields = ['numcontratocliente', 'observaciones', 'valor_estimado']
        
class FSolicitud_Equipo_Proxy(forms.ModelForm):
    class Meta:
        model = Solicitud_Equipo_Proxy
        fields = "__all__"
        
class FSolicitud_PPA(forms.ModelForm):
    class Meta:
        model =  Solicitud_PPA
        fields = "__all__"

class FSolicitud_Neumatico(forms.ModelForm):
    class Meta:
        model =  Solicitud_Neumatico
        fields = "__all__"

class FSolicitud_Bateria(forms.ModelForm):
    class Meta:
        model =  Solicitud_Bateria
        fields = "__all__"
