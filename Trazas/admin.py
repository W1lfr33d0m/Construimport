import os
from os import remove
from django.contrib import admin
from django.contrib.admin.models import LogEntry
# Register your models here.
from import_export import resources, widgets, fields
from import_export.admin import ImportExportModelAdmin
from import_export.widgets import ForeignKeyWidget
from django.http import HttpRequest
from docx2pdf import convert
from docxtpl import DocxTemplate, InlineImage
import webbrowser
from django.contrib import messages

class LogEntryResource(resources.ModelResource):
    
    class Meta:
        model = LogEntry
        skip_unchanged = True
        report_skipped = False
        fields = ('user', 'action_flag', 'content_type', 'action_time', 'object_id', 'object_repr', 'ip')
        

@admin.register(LogEntry)
class LogEntryAdmin(admin.ModelAdmin):
    # to have a date-based drilldown navigation in the admin page
    date_hierarchy = 'action_time'
    actions = ['Exportar Trazas',]
    # to filter the resultes by users, content types and action flags
    #list_filter = [
    #    'user',
    #    'content_type',
    #    'action_flag'
    #]

    # when searching the user will be able to search in both object_repr and change_message
    #search_fields = [
    #    'content_type',
    #]

    list_display = [
        'user',
        'action_flag',
        'content_type',
        'action_time',
        'object_repr',
        'ip'
        
    ]
    
    def get_fields(self, request: HttpRequest, obj):
        obj.ip = request.META.get("REMOTE_ADDR")
        return['user', 'action_flag', 'content_type', 'action_time', 'object_repr', 'ip']
        return super().get_fields(request, obj)
    
    def exportar_trazas_pdf(self, request:HttpRequest, queryset):
        for traza in queryset:
            base_url = os.path.join('media') + '/Trazas/'
            asset_url = base_url + 'Generar Traza.docx'
            doc = DocxTemplate(asset_url)
            trazas = LogEntry.objects.all()
            context = {
            'Trazas': trazas
            }
            doc.render(context)
            print(context['Trazas'])
            filename = 'Trazas.pdf'
            resultFilePath = 'media/Trazas/Trazas.docx'
            doc.save(resultFilePath)
            convert(resultFilePath, 'D:\Downloads')
            os.remove(resultFilePath)
            path = 'D:\Downloads'
            webbrowser.open(path)
        msg = "Trazas exportadas"
        self.message_user(request, msg, level=messages.SUCCESS)
        
    def exportar_trazas(self, request, queryset):     
        return self.exportar_trazas_pdf(request, queryset)
    exportar_trazas.short_description = 'Exportar Trazas'
    
    # def get_actions(self, request: HttpRequest):
    #     actions = super().get_actions(request)
    #     if request.user.groups.filter(name = 'Administrador'):
    #        return actions['Exportar Trazas',]
    #     return actions