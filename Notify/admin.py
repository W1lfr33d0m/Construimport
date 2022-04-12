from django.contrib import admin
from Notify.utils.admin import AbstractNotifyAdmin
from .models import Notification
# Register your models here.


admin.site.register(Notification)
