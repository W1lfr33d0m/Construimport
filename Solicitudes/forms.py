from django import forms
#from formtools.wizard import FormWizard
from formtools.wizard.views import SessionWizardView
from django.shortcuts import render
from django.core.exceptions import ValidationError
from import_export.widgets import ForeignKeyWidget, ManyToManyWidget
from django.utils.translation import gettext_lazy as _

from numpy import delete
from .models import *


class FSolicitud_Equipo(forms.ModelForm):
    class Meta:
        model =  Solicitud_Equipo
        fields = ['cliente', 'observaciones', 'valor_estimado']
        widgets = {
            'cliente': forms.Select(attrs={
                'placeholder': '',
                'class': 'form-control'
            }),
            'observaciones': forms.TextInput(attrs={
                'placeholder': '',
                'class': 'form-control'
            }),
            'valor_estimado': forms.NumberInput(attrs={
                'placeholder': 'Escriba',
                'class': 'form-control'
            }),
        }
    
        
class FSolicitud_Equipo_Proxy(forms.ModelForm):
    class Meta:
        model = Solicitud_Equipo_Proxy
        fields = ['idproducto', 'cantidad']
        widgets = {
            'idproducto': forms.Select(attrs={
                'placeholder': '',
                'class': 'form-control'
            }),
            'cantidad': forms.NumberInput(attrs={
                'placeholder': 'Escriba',
                'class': 'form-control'
            }),
        }

FSolicitud_Equipo_ProxyFormset = forms.inlineformset_factory(
                                                             model=Solicitud_Equipo_Proxy, 
                                                             parent_model=Solicitud_Equipo, 
                                                             form=FSolicitud_Equipo_Proxy, extra=1,
                                                             widgets={
                                                                        'idproducto': forms.Select(attrs={
                                                                        'placeholder': '',
                                                                        'class': 'form-control'
                                                                        }),
                                                                        'cantidad': forms.NumberInput(attrs={
                                                                        'placeholder': 'Escriba',
                                                                        'class': 'form-control'
                                                                        }),
                                                                        
        }
                                                             )

class FSolicitud_PPA(forms.ModelForm):
    class Meta:
        model =  Solicitud_PPA
        fields = ['cliente', 'observaciones', 'valor_estimado']   
        widgets = {
            'cliente': forms.Select(attrs={
                'placeholder': '',
                'class': 'form-control'
            }),
            'observaciones': forms.TextInput(attrs={
                'placeholder': '',
                'class': 'form-control'
            }),
            'valor_estimado': forms.NumberInput(attrs={
                'placeholder': 'Escriba',
                'class': 'form-control'
            }),
        }
        
class FSolicitud_PPA_Proxy(forms.ModelForm):
    class Meta:
        model = Solicitud_PPA_Proxy
        fields = ['idproducto', 'cantidad']
        widgets = {
            'idproducto': forms.Select(attrs={
                'placeholder': '',
                'class': 'form-control'
            }),
            'cantidad': forms.NumberInput(attrs={
                'placeholder': 'Escriba',
                'class': 'form-control'
            }),
        }

class FSolicitud_Neumatico(forms.ModelForm):
    class Meta:
        model =  Solicitud_Neumatico
        fields = ['cliente', 'observaciones', 'valor_estimado']
        widgets = {
            'cliente': forms.Select(attrs={
                'placeholder': '',
                'class': 'form-control'
            }),
            'observaciones': forms.TextInput(attrs={
                'placeholder': '',
                'class': 'form-control'
            }),
            'valor_estimado': forms.NumberInput(attrs={
                'placeholder': 'Escriba',
                'class': 'form-control'
            }),
        }
         
class FSolicitud_Neumatico_Proxy(forms.ModelForm):
    class Meta:
        model = Solicitud_Neumatico_Proxy
        fields = ['idproducto', 'cantidad']
        widgets = {
            'idproducto': forms.Select(attrs={
                'placeholder': '',
                'class': 'form-control'
            }),
            'cantidad': forms.NumberInput(attrs={
                'placeholder': 'Escriba',
                'class': 'form-control'
            }),
        }

class FSolicitud_Bateria(forms.ModelForm):
    class Meta:
        model =  Solicitud_Bateria
        fields = ['cliente', 'observaciones', 'valor_estimado']
        widgets = {
            'cliente': forms.Select(attrs={
                'placeholder': '',
                'class': 'form-control'
            }),
            'observaciones': forms.TextInput(attrs={
                'placeholder': '',
                'class': 'form-control'
            }),
            'valor_estimado': forms.NumberInput(attrs={
                'placeholder': 'Escriba',
                'class': 'form-control'
            }),
        }
class FSolicitud_Bateria_Proxy(forms.ModelForm):
    class Meta:
        model = Solicitud_Bateria_Proxy
        fields = ['idproducto', 'cantidad']
        widgets = {
            'idproducto': forms.Select(attrs={
                'placeholder': '',
                'class': 'form-control'
            }),
            'cantidad': forms.NumberInput(attrs={
                'placeholder': 'Escriba',
                'class': 'form-control'
            }),
        }
