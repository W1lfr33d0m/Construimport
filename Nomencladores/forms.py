from django import forms
from django.forms import CheckboxSelectMultiple, ModelChoiceField, ModelForm, MultipleChoiceField, SelectMultiple
from soupsieve import select
from import_export.forms import ImportForm, ConfirmImportForm
from .models import *
from django.core.exceptions import ValidationError
from import_export.widgets import ForeignKeyWidget, ManyToManyWidget
from formtools.wizard.views import SessionWizardView
from numpy import delete
from .models import Proveedor, Casa_Matriz, Sucursal_Cuba, Equipo, PPA, Neumatico, Bateria



class CustomImportForm(ImportForm):
     Pais = forms.ModelChoiceField(
         queryset=Pais.objects.all(),
         required=True)
    

class CustomConfirmImportForm(ConfirmImportForm):
     Pais = forms.ModelChoiceField(
         queryset=Pais.objects.all(),
         required=True)
    
    
class FProveedor(forms.ModelForm):
        
    class Meta:
        model =  Proveedor
        fields = ['codmincex', 'nomproveedor', 'codigopais', 'clasificacion']
        widgets = {
            'codmincex': forms.TextInput(attrs={
                'placeholder': 'Escriba el código',
                'class': 'form-control'
            }),
            'nomproveedor': forms.TextInput(attrs={
                'placeholder': 'Escriba el nombre',
                'class': 'form-control'
            }),
            'codigopais': forms.Select(attrs={
                'placeholder': '',
                'class': 'form-control'
            }),
            'clasificacion': forms.Select(attrs={
                'placeholder': '',
                'class': 'form-control'
            }),
            
            
        }
        
class FProveedor_Marca(forms.ModelForm):
    marcas = Marca.objects.all()
    marca = forms.ModelMultipleChoiceField(queryset= marcas, to_field_name='codigomarca', widget = CheckboxSelectMultiple)
    class Meta:
        model =  Proveedor
        fields = ['marca',]
    
class FProveedor_Equipos(forms.ModelForm):
    
    equipos = forms.ModelMultipleChoiceField(queryset=Equipo.objects.all())
   
    class Meta:
        model =  Proveedor
        fields = ['equipos', ]
        
class FProveedor_PPA(forms.ModelForm):
    
    ppa = forms.ModelMultipleChoiceField(queryset=PPA.objects.all())
    
    class Meta:
        model =  Proveedor
        fields = ['ppa',]
        
class FProveedor_Neumaticos(forms.ModelForm):
    
    neumaticos = forms.ModelMultipleChoiceField(queryset=Neumatico.objects.all())
    
    class Meta:
        model =  Proveedor
        fields = ['neumaticos',]
        
class FProveedor_Baterias(forms.ModelForm):
    
    baterias = forms.ModelMultipleChoiceField(queryset=Bateria.objects.all())
    
    class Meta:
        model =  Proveedor
        fields = ['baterias', ]
        
class FProveedor_Sucursal(forms.ModelForm):
    email: forms.EmailField()
    
    class Meta:
        model =  Sucursal_Cuba
        fields = ['direccion', 'email', 'telefono', 'contacto', 'carnet_trabajo']
        widgets = {
            'direccion': forms.TextInput(attrs={
                'placeholder': 'Escriba la dirección',
                'class': 'form-control'
            }),
            'contacto': forms.TextInput(attrs={
                'placeholder': 'Escriba el nombre y los apellidos del representante',
                'class': 'form-control'
            }),
            'carne_trabajo': forms.TextInput(attrs={
                'placeholder': 'Escriba el carnet de trabajo',
                'class': 'form-control'
            }),
        }

class FProveedor_Casa_matriz(forms.ModelForm):
    email: forms.EmailField()
    
    class Meta:
        model =  Casa_Matriz
        fields = ['direccion', 'email', 'telefono', 'contacto', 'sitio_web']
        widgets = {
            'direccion': forms.TextInput(attrs={
                'placeholder': 'Escriba la dirección',
                'class': 'form-control'
            }),
           
            'contacto': forms.TextInput(attrs={
                'placeholder': 'Escriba el nombre y los apellidos del representante',
                'class': 'form-control'
            }),
            'sitio_web': forms.TextInput(attrs={
                'placeholder': 'Escriba el carnet de trabajo',
                'class': 'form-control'
            }),
        }