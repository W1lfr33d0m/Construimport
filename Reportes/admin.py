from django.contrib import admin
from Reportes.models import MyReport
from .models import MyModel

# Register your models here.
admin.register(MyModel, MyReport)


