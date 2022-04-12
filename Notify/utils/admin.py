from django.contrib import admin

class AbstractNotifyAdmin(admin.ModelAdmin):
    raw_id_fields = (
        'receiver'
        )
    list_display = ('receiver', 
                    'actor', 
                    'verb', 
                    'read', 
                    'public_notification'
                    )

    def get_queryset(self, request):
        qs = super(AbstractNotifyAdmin, self).get_queryset(request)
        return qs.prefetch_related('actor')