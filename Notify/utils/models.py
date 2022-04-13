from ast import arguments
from email.headerregistry import Group
#from termios import VERASE
from tkinter import N
from django.db import models
#ContentType
from email.policy import default
from re import A
from sqlite3 import Timestamp
from django.contrib.contenttypes.models import ContentType
from django.contrib.contenttypes.fields import GenericForeignKey
from numpy import disp

#Swapper
from swapper import load_model

#Signals
from Notify.signals import notify

#Document
from django.db import models
from django.dispatch import receiver
from django.contrib.auth.models import User, Group
from pytz import timezone
from sqlalchemy import ForeignKey
from django.db.models.query import QuerySet
#Timezone
from django.utils import timezone
import datetime

class NotificationQueryset(models.QuerySet):
    def read(self, include_deleted=True):
        """
        Retornar notificaciones leídas
        
        """
        if include_deleted == True:
            return self.filter(leido=True)
        
    def non_read(self, include_deleted=True):
        if include_deleted == True:
            return self.filter(read=False)
        
    def mark_all_as_read(self, receiver):
        """
        Marcar todas las notificaciones como leídas
        
        """
        qs =self.read(False)
        if receiver:
            qs = qs.filter(receiver=receiver)
            
        return qs.update(read=True)
    
    def mark_all_as_unread(self, receiver):
        """
        Marcar todas las notificaciones como no leídas
        
        """
        qs =self.read(True)
        if receiver:
            qs = qs.filter(receiver=receiver)
            
        return qs.update(read=False)
    
        
class AbstractNotificationManager(models.Manager):
    def get_queryset(self):
        return self.NotificationQueryset(self.model, using=self.db)

class AbstractNotification(models.Model):
    
    class Levels(models.Model):
        success = 'success'
        info = 'info'
        error = 'error'
        LEVEL_CHOICES = [
            (success, 'success'), 
            (info, 'info'), 
            (error, 'error')
            ]
        
    level = models.CharField(
        choices = Levels.LEVEL_CHOICES, 
        max_length=20, 
        default=Levels.info,
        verbose_name=('Tipo')
        )
    
    receiver = models.ForeignKey(
        User, 
        models.CASCADE, 
        related_name='notificaciones', 
        blank=True, 
        null=True,
        verbose_name=('Receptor')
        )
    
    actor_content_type = models.ForeignKey(
        ContentType, 
        related_name='notificar_actor', 
        on_delete = models.CASCADE,
        verbose_name=('Contenido')
        )
    
    object_id_actor = models.PositiveBigIntegerField(
        verbose_name=('Actor')
    )
    
    actor = GenericForeignKey(
        'actor_content_type', 
        'object_id_actor'
        )
    
    verb = models.CharField(
        max_length= 220,
        verbose_name=('Mensaje')
        )
    
    timestamp = models.DateTimeField(
        default=timezone.now,
        #deb_index = True
        verbose_name = ('Fecha y Hora')
        )
    
    read = models.BooleanField(
        default=False,
        verbose_name= ('Leída')
        )
    
    public_notification = models.BooleanField(
        default=True,
        verbose_name= ('Pública')
        )
    
    deleted = models.BooleanField(
        default=False,
        verbose_name= ('Eliminada')
        )
        
    class Meta:
        abstract = True 
    
    #def __str__(self):
    #		return "actor: {} --- receiver: {} --- verb: {} ".format(self.actor.username, self.receiver.username, self.verbo)



def notify_signals(verb, **kwargs):
    """
    Controlador para crear instancia de notificación
    tras llamada de señal de acción
    
    """
    receiver = kwargs.pop('receiver')
    
    actor = kwargs.pop('sender')
    
    public = bool(kwargs.pop('public_notification', True))
    
    timestamp = kwargs.pop('timestamp', timezone.now())
    
    Notify = load_model('Notify', 'Notification')
    
    level = kwargs.pop('level', Notify.level)
    
    if isinstance(receiver,Group):
        receiver = receiver.user_set.all()    
    elif isinstance(receiver, (QuerySet, list)):
        receiver = receiver
    else:
        receivers = [receiver]
        
    new_notification = []
    for r in receivers:
        notification = Notify(
            receiver = r,
            actor_content_type = ContentType.objects.get_for_model(actor),
            object_id_actor = actor.pk,
            verb = str(verb),
            public_notification = public,
            timestamp = timestamp,
            level = level   
        
        )
    
        notification.save()
        new_notification.append(notification)
    
    return new_notification
    
notify.connect(notify_signals, dispatch_uid='Notify.models.Notification')