from django.test import TestCase
from Nomencladores.models import *

class Pais_Test(TestCase):
    def setUp(self):
        Pais.objects.create(codigopais = 'CU', nompais = 'Cuba') 
        
    def test_pais_creation(self):
        pais = Pais.objects.get(codigopais = 'CU')
        self.assertEqual = pais.codigopais == 'CU'