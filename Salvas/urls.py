# Copyright (c) 2009 Guilherme Semente and contributors
#
# This file is part of Django Smuggler.
#
# Django Smuggler is free software under terms of the GNU Lesser
# General Public License version 3 (LGPLv3) as published by the Free
# Software Foundation. See the file README for copying conditions.

from django.urls import include, path, reverse_lazy, re_path

from .views import *

DB_SAVE =reverse_lazy('db_save',)

DB_RESTORE = reverse_lazy( 'db_restore',)

urlpatterns = [
    
    path('salvas/backups/', display, name='Salvas'),
    
    path('db_save/', db_save, name='salvar'),
   
    path('db_restore/<name>', db_restore, name='restaurar'),
    
    path('descargar/<str:name>', download_file, name='descargar'),
    
    path('eliminar/<name>', remove_file, name='eliminar')
]
