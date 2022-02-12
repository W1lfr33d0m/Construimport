from django.contrib.auth import user_logged_in, user_logged_out
from notifications.signals import notify
from django.utils.translation import gettext as _
from signals import receiver


@receiver(user_logged_in)
def user_signed_in(request, user, **kwargs):    
  notify.send(user, recipient=user, verb=_("You signed in"))

@receiver(user_logged_in)
def user_signed_out(request, user, **kwargs):    
  notify.send(user, recipient=user, verb=_("You signed out"))