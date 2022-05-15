"""Construimport URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django import urls, views
import static
from django.conf import settings
from django.contrib import admin
from django.urls import path, include
from django.urls.conf import include
import notifications.urls
from Dashboard.models import Dashboard
from Dashboard import urls
from Salvas import urls
from Solicitudes.views_create import *
from Solicitudes.views import *

urlpatterns = [
    path('Salvas/', include('Salvas.urls')),
    path('Reportes/', include('Reportes.urls')),
    path('Solicitudes/', include('Solicitudes.urls')),
    path('', admin.site.urls),
    path('inbox/notifications/', include(notifications.urls, namespace='notifications')),
    #path('admin_tools_stats/', include('admin_tools_stats.urls')),
    #path('pdf/', include('django_pdf.urls')),
    #path('admin/doc/', include('django.contrib.admindocs.urls')),
    
]
