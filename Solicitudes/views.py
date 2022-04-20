from django.shortcuts import render
from django.views.generic.base import TemplateView
import io
from django.http import FileResponse
from reportlab.pdfgen import canvas
#from Solicitudes.models import Solicitud

