from django.db import models
# This file can be named anything, but it lives well within the admin.py or
# models.py as it'll ensure your register() command is run.
# yourapp/reports.py -- This file can be named anything

from reports import ModelReport
# Create your models here.
class MyReport(ModelReport):
    name = "Report - My Report"

