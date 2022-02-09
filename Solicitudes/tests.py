from django.test import TestCase
from Solicitudes.models import Solicitud
from datetime import date


class SolicitudTesTcase(TestCase):
    def setUp(self):
        day = date.today()
        Solicitud.objects.create(numsolicitud = '2200001', fechasol = day, aprobada = False)
        
    def test_auth_user(self):
        solicitud1 = Solicitud.objects.get(numsolicitud = '2200001')
        self.assertEqual(Solicitud.__add__(solicitud1), 'Solicitud insertada')
# Create your tests here.
