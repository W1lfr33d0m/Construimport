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

def action_link(self, obj):
    app_name = obj._meta.app_label
    url_name = obj._meta.model_name
    data_id = obj.numsolicitud

    return """
         <ul>
            <li><a href="/admin/{0}/{1}/{2}">Edit</a></li>
            <li><a href="/admin/{0}/{1}/{2}/delete">Delete</a></li>
         </ul>
         """.format(
         obj._meta.app_label, 
         obj._meta.model_name, 
         obj.numsolicitud)
action_link.allow_tags = True
action_link.short_description = 'Actions'

