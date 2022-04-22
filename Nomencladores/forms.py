from django import forms
from import_export.forms import ImportForm, ConfirmImportForm
from .models import *

class CustomImportForm(ImportForm):
    Pais = forms.ModelChoiceField(
        queryset=Pais.objects.all(),
        required=True)
    

class CustomConfirmImportForm(ConfirmImportForm):
    Pais = forms.ModelChoiceField(
        queryset=Pais.objects.all(),
        required=True)