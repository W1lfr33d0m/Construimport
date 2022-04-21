from import_export import resources
from .models import *
from import_export import resources, widgets, fields
from import_export.admin import ImportExportModelAdmin
from import_export.widgets import ForeignKeyWidget, Widget

class PaisResource(resources.ModelResource):
    
    class meta:
        model = Pais
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('codigopais',)
        fields = ('codigopais', 'nompais')
        
class ProveedorResource(resources.ModelResource):
    
    codigopais = fields.Field(
        column_name='codigopais', 
        attribute='codigopais', 
        widget=ForeignKeyWidget(Pais, 'pais'))
    
    class Meta:
        model = Proveedor
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('codmincex',)
        fields = ('codmincex', 'nomproveedor', 'codigopais', 'productos', 'clasificacion')


class ProvinciaResource(resources.ModelResource):
    
    class Meta:
        model = Provincia
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('codigoprovincia',)
        fields = ('codigoprovincia', 'nombre', 'capital')        


class ClienteResource(resources.ModelResource):
    
    class Meta:
        model = Cliente
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('numcontratocliente',)
        fields = ('numcontratocliente', 'nomcliente', 'OSDE', 'provincia')
        
class EquipoResource(resources.ModelResource):
    
    class meta:
        model = Pais
        skip_unchanged = True
        report_skipped = False    
        

class PPAResource(resources.ModelResource):
    
    class meta:
        model = Pais
        skip_unchanged = True
        report_skipped = False    
        

class NeumaticoResource(resources.ModelResource):
    
    class meta:
        model = Pais
        skip_unchanged = True
        report_skipped = False    
        
        
class BateriaResource(resources.ModelResource):
    
    class meta:
        model = Pais
        skip_unchanged = True
        report_skipped = False    
    