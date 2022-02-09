from django.contrib import admin
from .reports import MyReport
from .models import MyModel

# Register your models here.
reports.register(MyModel, MyReport)


