from django.shortcuts import render
from reportlab.pdfgen import canvas
from reportlab.lib.utils import ImageReader
from datetime import datetime
from django.http import HttpResponse
from easy_pdf.views import PDFTemplateView
# Create your views here.
def pdf_dw(request):                                  

    # Create the HttpResponse object 
    response = HttpResponse(content_type='application/pdf') 

    # This line force a download
    response['Content-Disposition'] = 'attachment; filename="1.pdf"' 

    # READ Optional GET param
    get_param = request.GET.get('name', 'World')

    # Generate unique timestamp
    ts = datetime.utcnow().strftime('%Y-%m-%d %H:%M:%S.%f')

    p = canvas.Canvas(response)

    # Write content on the PDF 
    p.drawString(100, 500, "Hello " + get_param + " (Dynamic PDF) - " + ts ) 

    # Close the PDF object. 
    p.showPage() 
    p.save() 

    # Show the result to the user    
    return response

class HelloPDFView(PDFTemplateView):
    template_name = 'hello.html'
    