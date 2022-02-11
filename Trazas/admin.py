from django.contrib import admin
from django.contrib.admin.models import LogEntry
# Register your models here.
@admin.register(LogEntry)
class LogEntryAdmin(admin.ModelAdmin):
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
        
    ]