from Notify.utils.models import AbstractNotification
from django.db import models

class Notification(AbstractNotification):
    
    class Meta(AbstractNotification.Meta):
        abstract = False