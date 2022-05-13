from re import template
from django.contrib import admin
from .models import *
from django.template.response import TemplateResponse
from django.utils.translation import gettext as _
# Register your models here.
@admin.register(Dashboard)
class DashboardAdmin(admin.ModelAdmin):
    template_name = 'Dashboard/dashboard.html'
    icon_name =  'Dashboard'
    
    def get_urls(self):
        from django.urls import path
        info = self.model._meta.app_label, self.model._meta.model_name

        return [
            path('', self.dashboard_view, name='%s_%s_changelist' % info),
        ]
        
    def dashboard_view(self, request):
        context = {
            **self.admin_site.each_context(request),
            'title': 'Dashboard',
                }
        return TemplateResponse(request, self.template_name, context)