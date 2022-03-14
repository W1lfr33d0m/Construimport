from django.contrib import admin
from smuggler import forms, views
from django.shortcuts import render
from django.forms import forms
from django.views.generic.base import TemplateView
from Información.models import Restauras

# Register your models here.
#change_list_template = 'smuggler/change_list.html'
@admin.register(Restauras)
class RestaurasAdmin(admin.ModelAdmin):
    list_display = ('archivos',)
    
    def get_form(self, request, obj=None, change=False, **kwargs):
        form = super().get_form(request, obj, change, **kwargs)
        return form
    