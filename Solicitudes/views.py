from django.shortcuts import render
from django.views.generic.base import TemplateView
import io
from django.http import FileResponse
from reportlab.pdfgen import canvas
from Solicitudes.models import Solicitud

def some_view(request):
    # Create a file-like buffer to receive PDF data.
    buffer = io.BytesIO(Solicitud.objects.all())

    # Create the PDF object, using the buffer as its "file."
    p = canvas.Canvas(buffer)

    # Draw things on the PDF. Here's where the PDF generation happens.
    # See the ReportLab documentation for the full list of functionality.
    p.drawString()

    # Close the PDF object cleanly, and we're done.
    p.showPage()
    p.save()

    # FileResponse sets the Content-Disposition header so that browsers
    # present the option to save the file.
    buffer.seek(0)
    return FileResponse(buffer, as_attachment=True, filename='Solicitud.pdf')
