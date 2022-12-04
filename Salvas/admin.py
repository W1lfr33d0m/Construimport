from re import template
from django.contrib import admin
from .models import *
from django.template.response import TemplateResponse
from django.utils.translation import gettext as _
# Register your models here.
@admin.register(Salvas)
class SalvasAdmin(admin.ModelAdmin):
    object_history_template = 'salvarestaura.html'
    template_name = 'salvarestaura.html'
    icon_name =  'Salvas'
    
    def get_urls(self):
        from django.urls import path
        info = self.model._meta.app_label, self.model._meta.model_name

        return [
            path('backups/', self.salvas_view, name='%s_%s_changelist' % info),
        ]
        
    def salvas_view(self, request):
        context = {
            **self.admin_site.each_context(request),
            'title': 'Salvas',
                }
        return TemplateResponse(request, self.template_name, context)
    
            