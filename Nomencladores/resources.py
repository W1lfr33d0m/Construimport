from sqlalchemy import column
from attr import attributes
from import_export import resources
from pydantic import Field
from .models import *
from import_export import resources, widgets, fields
from import_export.admin import ImportExportModelAdmin
from import_export.widgets import ForeignKeyWidget, Widget

     
class ProveedorResource(resources.ModelResource):
    
    codigopais = fields.Field(
        column_name='codigopais', 
        attribute='codigopais', 
        widget=ForeignKeyWidget(Pais, 'codigopais'))
    
    class Meta:
        model = Proveedor
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('codmincex',)
        fields = ('codmincex', 'nomproveedor', 'codigopais', 'productos', 'clasificacion')


class ClienteResource(resources.ModelResource):
    
    class Meta:
        model = Cliente
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('numcontratocliente',)
        fields = ('numcontratocliente', 'nomcliente', 'OSDE', 'codigoprovincia')


class MarcaResource(resources.ModelResource):
    
    class meta:
        model = Marca
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('codigomarca')
        fields = ('codigomarca', 'nommarca')    
        
        
class EquipoResource(resources.ModelResource):
    
    class meta:
        model = Pais
        skip_unchanged = True
        report_skipped = False    
        

class PPAResource(resources.ModelResource):
    
    model = PPA
    
    class meta:
        model = Pais
        skip_unchanged = True
        report_skipped = False
        import_id_fields = ('idproducto')
        fields = ('descripcion', 'UM', 'marca', 'equipo')  
        

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
    