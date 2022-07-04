#!/usr/bin/python
# -*- coding: utf-8 -*-
from http import client
from multiprocessing.connection import Client
import os
import sys 
import django

from pydantic import EmailError
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.append(BASE_DIR)
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "Construimport.settings")
django.setup()

from Solicitudes.models import *
from .Nomencladores.models import *

from Construimport import settings
import logging
import pendulum

#from celery import shared_task
from django.conf import settings
from django.core import mail
from django.core.mail import send_mail
from django.template.loader import render_to_string
from django.utils.html import strip_tags




print (os. getcwd() )
print(django.get_version())
#def work():
 #   for i in range(10):
  #      m = MyModel.objects.get(pk=i)


#if __name__ == '__main__':
 #   work()
    
logger = logging.getLogger()

# def email_certificado_subido(certificado_id: int):
#     """
#     Task para enviar un email cuando se sube un nuevo certificado
#     :param certificado_id:
#     """

#     log_prefix = 'EMAIL_CERTIFICADO_SUBIDO'

#     try:
#         logger.debug(f'{log_prefix}__TAREA_INICIADA. ID_CERTIFICADO: {certificado_id}')

#         certificado = SolicitarCertificadoSSL.objects.get(pk=certificado_id)
#         emails_to_sent = certificado.email

#         if not emails_to_sent:
#             logger.error(f'{log_prefix} NO_EXISTEN_EMAILS_CONFIGURADOS_PARA_EL_ENVIO_DEL_CORREO')
#             return False

#         template_context = {
#             'certificado': certificado,
#         }

#         html_message = render_to_string('certificado/certificado_subido.html', template_context)
#         plain_message = strip_tags(html_message)

#         for email in emails_to_sent:
#             mail.send_mail(
#                 'Nuevo certificado subido',
#                 plain_message,
#                 settings.EMAIL_HOST_USER,
#                 [email],
#                 html_message=html_message
#             )
#         logger.debug(f'{log_prefix}__TAREA_FINALIZADA. ID_Solicitudes: {certificado_id}')
#         return True

#     except Exception as e:
#         logger.exception(f"{log_prefix} OCURRIO_UN_ERROR_AL_ENVIAR_EL_CORREO__DETALLES: {e}")
#         return False



def chequear_clientes_al_expirar(dias: int):
    """
    Tarea para chequear los contratos de clientes próximos a expirar
    """
    log_prefix = 'CHEQUEAR_CLIENTES_PROXIMOS_A_EXPIRAR'

    try:
        logger.debug(f'{log_prefix}__TAREA_INICIADA. DIAS A CHEQUEAR: {dias}')

        # Cclientes a expirar en X dias
        expired_date = pendulum.now().add(days=dias)
        clientes = Cliente.objects.filter(   
            fecha_caducidad=expired_date,
        )
        for cliente in clientes:
            if  cliente.email is not None:
                send_mail(
                    'Contrato próximo a expirar',
                    'Su contrato está próximo a expirar. Debe actualizarlo',
                    [User.groups.filter(name='Especialista_marketing').values_list('email', flat=True)],
                    cliente.correo,
                    fail_silently=False,
                    )    
        logger.debug(f'{log_prefix}__TAREA_FINALIZADA')
        return True

    except:
        raise EmailError('No se pudo enviar el correo')
        return False


def chequear_clientes_expirado():
    """
    Task para chequear los certificados expirados
    """

    log_prefix = 'CHEQUEAR_CLIENTES_EXPIRADOS'

    try:
        logger.debug(f'{log_prefix}__TAREA_INICIADA')

        # Clientes expirados
        expired_date = pendulum.now()
        clientes_expirados = Cliente.objects.filter(
            fecha_caducidad=expired_date,
        )

        for cliente in clientes_expirados:
            if  cliente.correo:
                send_mail(
                    'Contrato próximo a expirar',
                    'Su contrato está expirado. Debe renovarlo',
                    [User.groups.filter(name='Especialista_marketing').values_list('email', flat=True)],
                    cliente.correo,
                    fail_silently=False,
                    )    
                cliente.activo = False
                cliente.save()
                # logger.debug(
                #     f'{log_prefix}__EMAIL_PARA_NOTIFICAR_CERTIFICADO_EXPIRADO_ENVIADO_A: {email_to_send}, '
                #     f'ID_CERTIFICADO: {certificado.id_sol}, '
                #     f'ESTADO_CERTIFICADO: {certificado.get_estado_display()}'
                # )
        logger.debug(f'{log_prefix}__TAREA_FINALIZADA')
        return True

    except:
        raise EmailError('No se pudo enviar el correo')
        return False
    
chequear_clientes_expirado()
chequear_clientes_al_expirar(15)
# email_certificado_subido()