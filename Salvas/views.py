from asyncio.windows_events import NULL
#from curses.ascii import NULL
from django.shortcuts import redirect, render

# Create your views here.
# Copyright (c) 2009 Guilherme Semente and contributors
#
# This file is part of Django Smuggler.
#
# Django Smuggler is free software under terms of the GNU Lesser
# General Public License version 3 (LGPLv3) as published by the Free
# Software Foundation. See the file README for copying conditions.
from audioop import add
from multiprocessing import context
import os.path
import subprocess
import tempfile
from datetime import datetime
import mimetypes
from django.contrib import messages
from django.contrib.admin.helpers import AdminForm
from django.contrib.auth.decorators import user_passes_test
from django.core.exceptions import ObjectDoesNotExist, PermissionDenied
from django.core.management.base import CommandError
from django.core.serializers.base import DeserializationError
from django.db import IntegrityError
from django.http import HttpRequest, HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from django.utils.encoding import force_str
from django.utils.translation import gettext_lazy as _
from django.utils.translation import ngettext_lazy
from django.views.generic.edit import FormView
from django.contrib.auth.decorators import login_required, permission_required
#from cryptography.fernet import Fernet
from django.urls import reverse_lazy


from smuggler import settings
from smuggler.forms import ImportForm
from smuggler.utils import (
    load_fixtures,
    save_uploaded_file_on_disk,
    serialize_to_response,
)
 

def save_address_dbs(address):
    # fich = open("static/db/dblist.txt")
    # lines = fich.readlines() 
    # address = address + '\n'
    # fich.close() 
    # if address not in lines:
    #     if lines.__len__() == 0:
    #         lines.append(address)
    #     #elif lines.__len__() == 4:
    #     #    for line in lines([3][0:-1]):
    #     #        lines.remove(line)
    #     elif lines.__len__() > 0 or lines.__len__() < 5:
    #         first = lines[0:]
    #         second = lines[1:]
    #         third = lines[2:]
    #         lines.clear()
    #         lines.append(address)
    #         lines.append(first)
    #         lines.append(second)
    #         lines.append(third)
    fich = open("static/db/dblist.txt", "a")
    print(address)
    fich.write(address + '\n')
    # for line in lines:
    #     fich.writelines(line)
    fich.close()
    
    
def list_address_db():
    fich = open("static/db/dblist.txt")
    lines = fich.readlines()
    fich.close()
    res = []
    print(lines)
    if lines.__len__()>0:
        for line in lines:
            print(line[:-2])
            line = line[:-1]
            fich = line.split("/")[2:]
            date = line.split(":")[0:]
            Year = date[0:3]
            Month = date[4:5]
            Day = date[6:7]
            Hour = date[8:9]
            Minute = date[10:11]
            res.append([fich,Year,Month,Day,Hour,Minute])
    res.reverse()
    return res

def remove_address_dbs(name):
    fich = open("static/db/dblist.txt")
    lines = fich.readlines() 
    fich.close() 
    index = 0
    address = 'static/db/' + name + '\n'
    
    lines.remove(address)
    
    with open("static/db/dblist.txt", "w") as fich:
        for nline in lines:
            fich.writelines(nline)
        
      
    # fich = open("static/db/dblist.txt", "w")
    # for nline in lines:
    #     fich.writelines(nline)
    # fich.close()    
            


def display(request):
    list = list_address_db()
    return render(request, 'salvarestaura.html', {'dblist': list})


@permission_required('auth.add_user', login_url='403')
def db_save(request):
    list = list_address_db()
    fecha_hora = str(datetime.today().strftime("%Y%m%d%H%M"))
    address = "static/db/" + fecha_hora + "construimport.sql" 
    PASSWORD = '3693'                ##CONTRASEÑA DE LA BD##
    os.putenv('PGPASSWORD', PASSWORD)
    address = "static/db/" + fecha_hora + "construimport.sql"   ##RUTA DONDE SE GUARDA EL ARCHIVO DE LA BD##
    try:
        subprocess.Popen("pg_dump -c -h localhost -p 5433 -U postgres -d construimport > " + address, shell=True)
        save_address_dbs(address)
        list = list_address_db()
        messages.success(request, "Datos salvados")
        return redirect('Salvas:Salvas')
        # return render(request, 'salvarestaura.html', {'dblist': list})
    except:        
        return render(request, 'salvarestaura.html', {'dblist': list})      
    #return render(request, 'salvarestaura.html', {'dblist': list})


@permission_required('auth.add_user', login_url='403')
def db_restore(request:HttpRequest, name):
    list = list_address_db()
    address = "static/db/" + name    ##RUTA DONDE ESTA GUARDADO EL ARCHIVO DE LA BD##
    PASSWORD = '3693'                ##CONTRASEÑA DE LA BD##
    os.putenv('PGPASSWORD', PASSWORD)
    restore_context = {
        'list' : list,
        'name' : name
    }
    try:
        subprocess.Popen("psql -h localhost -p 5433 -U postgres -d construimport <" + address, shell=True)
        messages.success(request, "Datos restaurados correctamente")
        return render(request, 'salvarestaura.html', {'dblist': list})
    except:
        messages.error(request, "Error al restaurar la base de datos")
        return render(request, 'salvarestaura.html', {'dblist': list}) 

    
@permission_required('auth.add_user', login_url='403')
def download_file(request:HttpRequest, name):
    list = list_address_db()
    address = "static/db/" + name    ##RUTA DONDE ESTA GUARDADO EL ARCHIVO DE LA BD##
    request.get(address)
    return redirect('Salvas:Salvas')
    
@permission_required('auth.add_user', login_url='403')    
def remove_file(request:HttpResponse, name):
    list = list_address_db()
    print(request.META.get("REMOTE_ADDR"))
    remove_address_dbs(name)
    print(name)
    address = "static/db/" + name
    os.remove(address)
    return redirect('Salvas:Salvas')
    #return render(request, 'salvarestaura.html',  {'dblist': list})