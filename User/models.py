from email.mime import image
from email.policy import default
from django.db import models
from django.contrib.auth.models import AbstractUser, User

from django.utils import timezone

from django.db.models.signals import post_save
from requests import post

from Notify.signals import  notify
from Notify.utils.models import notify_signals

# Create your models here.

#class Usuario(AbstractUser):
 #   lector = models.BooleanField(default=True)
    
    
class Post(models.Model):
    user = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
    )
    
    title = models.CharField(
        max_length=100,
        )
    
    image = models.FileField(
        upload_to= 'img',
    )
    
    text = models.TextField()
    
    timestamp = models.DateTimeField(
        default = timezone.now,
        db_index = True
    )
    
    def __str__(self):
        
        dict = {
            'title': self.title,
            'text': self.text[:10],
        }
        
        return u'%(title)s %(text)s' % dict
    
    
def notify_post(sender, instance, created, **kwargs):
    
    notify.send(instance.user, receiver = instance.user, verb = instance.title, level = 'success')
    
post_save.connect(notify_post, sender = Post)