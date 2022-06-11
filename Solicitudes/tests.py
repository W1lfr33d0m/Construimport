from django.test import TestCase
from Solicitudes.models import *
from COMEX.models import *
from datetime import date

# Create your tests here.
class SolicitudTesTcase(TestCase):
    def setUp(self):
        day = date.today()
        Solicitud_Equipo.objects.create(numsolicitud = '150', fechasol = day, aprobada = False, cliente = '126.0.04878', observaciones = '123', valor_estimado = 50000, especialista = 'comex1')
        
    def test_auth_user(self):
        solicitud1 = Solicitud.objects.get(numsolicitud = '2200001')
        self.assertEqual(Solicitud.__add__(solicitud1), 'Solicitud insertada')