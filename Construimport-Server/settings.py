"""
Django settings for Construimport-Server project.

Generated by 'django-admin startproject' using Django 3.2.9.

For more information on this file, see
https://docs.djangoproject.com/en/3.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.2/ref/settings/
"""
import os
from pathlib import Path
# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'django-insecure-rmbcw9j3jjdn8b!_dj_m^dn-xy-icnalw1u(6)-j332p_)8ewn'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = []



# Application definition

INSTALLED_APPS = [
    'django_crontab',
    'jazzmin',
    #'admin_interface',
    #'colorfield',
    #'admin_tools_stats',
    'django_nvd3',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django.contrib.admindocs',
    'Solicitudes',
    'COMEX',
    'Nomencladores',
    'Trazas',
    #'charts_dashboard',
    'djangobower',
    #'django_pdf',
    'dbbackup',
    'smuggler',
    'accounts',
    'reports',
    'notifications',
    'multiselectfield',
    'import_export',
    'easy_pdf',
    
]

DJANGO_SETTINGS_MODULE = 'Construimport-Server.settings'

NOTIFICATIONS_NOTIFICATION_MODEL = 'apps.notis.Notification'

LOCALE_PATHS =[os.path.join(BASE_DIR, 'locale')]

JAZZMIN_SETTINGS = {
    'site_title': 'CONSTRUIMPORT',
    'site_header': 'CONSTRUIMPORT',
    'site_logo': 'img/logo.png',
    'login_box': 'img/logo.png',
    'welcome_sign': 'Iniciar sesión',
    'icons': {
        'auth.user': 'fas fa-user',
        'auth.group': 'fas fa-users',
        'Nomencladores.Bateria': 'fas fa-car-battery',
        'Nomencladores.Equipo': 'fas fa-truck-pickup',
        'Nomencladores.Neumatico': 'fas fa-bullseye',
        'Nomencladores.PPA': 'fas fa-tools',
        'Nomencladores.Marca': 'fas fa-registered',
        'Nomencladores.Proveedor': 'fas fa-id-card',
        'Nomencladores.Cliente': 'fas fa-id-badge',
        'Nomencladores.EspecialistaCOMEX': 'fas fa-address-book',
        'Solicitudes.Solicitud': 'fas fa-book',
        'Nomencladores.Pais': 'fas fa-flag', 
        'Nomencladores.ContratoCliente': 'fas fa-file',
        'Nomencladores.ContratoProveedor': 'fas fa-file',
        'Nomencladores.Producto': 'fas fa-tractor',
        'Nomencladores.Provincia': 'fas fa-map',
        'Admin.LogEntry': 'fas fa-folder',
        'Información.Salva': 'fas fa-download',
        'Información.Restauras': 'fas fa-upload',
    },
    'changeform_format': 'horizontal_tabs',
    'related_modal_active': False,
    #'topmenu_links': [
    #    {'name': 'Backup', 'url':'/dump/',},
    #    {'name': 'Restaura', 'url':'/load/',},
    #]    
}

IMPORT_EXPORT_USE_TRANSACTIONS = True

IMPORT_EXPORT_SKIP_ADMIN_LOG = False

#IMPORT_EXPORT_TMP_STORAGE_CLASS = 'import_export.tmp_storages.TempFolderStorage'

IMPORT_EXPORT_IMPORT_PERMISSION_CODE = 'add'


STATIC_ROOT = 'static'

STATICFILES_DIRS = [os.path.join(BASE_DIR, 'Construimport-Server', 'static')]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.locale.LocaleMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'Construimport-Server.urls'

LOGIN_REDIRECT_URL = '/admin'

NOTIFICATIONS_USE_JSONFIELD = True

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'Construimport-Server', 'templates')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'Construimport-Server.wsgi.application'


# Database
# https://docs.djangoproject.com/en/3.2/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'construimport',
        'USER': 'const',
        'PASSWORD': 'C0nst*22',
        'HOST': 'localhost',
        'PORT': '5433',

    }
}

DBBACKUP_STORAGE = 'django.core.files.storage.FileSystemStorage'
DBBACKUP_STORAGE_OPTIONS = {'location': BASE_DIR / 'backup'}

CRONJOBS = [
    ('*/5 * * * *', 'Solicitudes.cron.my_backup')
]

# Password validation
# https://docs.djangoproject.com/en/3.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/3.2/topics/i18n/

LANGUAGE_CODE = 'es-es'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = False


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.2/howto/static-files/

STATIC_URL = '/static/'

# Default primary key field type
# https://docs.djangoproject.com/en/3.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
