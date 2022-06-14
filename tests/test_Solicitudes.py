from django.test import TestCase
from Solicitudes.models import *
import pytest
from COMEX.models import *
from datetime import date

# Create your tests here.
@pytest.mark.django_db
def test_solicitud_creation():
    day = date.today()
    solicitud1 = Solicitud_Equipo.objects.create(numsolicitud = 150, fechasol = day, aprobada = False, cliente = '126.0.04878', observaciones = '123', valor_estimado = 50000, especialista = 'comex1')
    assert solicitud1.numsolicitud == 150