from os import remove
from django.contrib import admin
from django.contrib.admin.models import LogEntry
# Register your models here.
from import_export import resources, widgets, fields
from import_export.admin import ImportExportModelAdmin
from import_export.widgets import ForeignKeyWidget
from django.http import HttpRequest


class LogEntryResource(resources.ModelResource):
    
    class Meta:
        model = LogEntry
        skip_unchanged = True
        report_skipped = False
        fields = ('user', 'action_flag', 'content_type', 'action_time', 'object_id', 'object_repr')
        

@admin.register(LogEntry)
class LogEntryAdmin(ImportExportModelAdmin):
    # to have a date-based drilldown navigation in the admin page
    date_hierarchy = 'action_time'

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
        'object_id',
        'object_repr'
        
    ]
    
    def get_fields(self, request: HttpRequest, obj):
        return['user', 'action_flag', 'content_type', 'action_time', 'object_id', 'object_repr']
        return super().get_fields(request, obj)