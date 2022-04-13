from Notify.utils.models import AbstractNotification
from django.db import models
from django.utils.translation import gettext as _

class Notification(AbstractNotification):
    
    class Meta(AbstractNotification.Meta):
        abstract = False
        verbose_name = _('Notificación')
        verbose_name_plural = _('Notificaciones')