from django.test import TestCase
from Solicitudes.models import *
import pytest
from Nomencladores.models import Cliente, OSDE
from COMEX.models import *
from datetime import date


# Create your tests here.
#@pytest.mark.django_db
class Solicitud_Test(TestCase):
    def setUp(self):
        day = date.today()
        provincia = Provincia.objects.create(codigoprovincia = 'HB',
                                             nombre = 'La Habana',
                                             capital = 'La Habana',
                                             )
        especialista = User.objects.create(username = 'comex1',
                                           first_name = 'Luis',
                                           last_name = 'Perez',
                                           email = 'luis@construimport.cu',
                                           is_staff = True,
                                           is_active = True,
                                           )
        ministerio = Ministerio.objects.create(reeup = '126.0.02145',
                                               nombre = 'Ministerio de la Construccion',
                                               siglas = 'MICONS',
                                               direccion = 'calle 5 entre 7 y 8',
                                               correo = 'direccion@micons.cu',
                                               telefono = 7842584,
                                               )
        osde = OSDE.objects.create(reeup = '126.0.6895', 
                                   nombre = 'Grupo Empresarial de Diseño e Ingeniería', 
                                   siglas = 'GEDIC',
                                   direccion = 'Calle 1, entre 3 y 4',
                                   correo = 'direccion@gedic.com',
                                   telefono = 78672525,
                                   ministerio = ministerio
                                   )
        cliente  = Cliente.objects.create(reeup = '126.0.04878',
                                          nombre = 'Empresa Test', 
                                          siglas = 'ET', 
                                          direccion = 'calle 1234', 
                                          correo = 'et@et.com', 
                                          telefono = 72053687,
                                          OSDE = osde
                                          )
        Solicitud_Equipo.objects.create(numsolicitud = 150, 
                                        fechasol = day, 
                                        estado = 'Aprobada', 
                                        cliente = cliente, 
                                        observaciones = '123', 
                                        valor_estimado = 50000, 
                                        especialista = especialista
                                        )
    
    def test_solicitud_creation(self):
        solicitud1 = Solicitud_Equipo.objects.get(numsolicitud = 150)
        #solicitud1 = Solicitud.objects.get(fechasol = date.today)
        self.assertEqual = solicitud1.numsolicitud == 150