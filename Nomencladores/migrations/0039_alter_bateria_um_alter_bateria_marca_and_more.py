# Generated by Django 4.0.1 on 2022-05-25 10:00

import Nomencladores.models
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0038_alter_pais_nompais_alter_provincia_capital_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bateria',
            name='UM',
            field=models.ForeignKey(db_column='codigoum', on_delete=django.db.models.deletion.PROTECT, to='Nomencladores.um'),
        ),
        migrations.AlterField(
            model_name='bateria',
            name='marca',
            field=models.ForeignKey(db_column='codigomarca', on_delete=django.db.models.deletion.PROTECT, to='Nomencladores.marca', verbose_name='Marca'),
        ),
        migrations.AlterField(
            model_name='casa_matriz',
            name='proveedor',
            field=models.ForeignKey(db_column='codmincex', on_delete=django.db.models.deletion.PROTECT, to='Nomencladores.proveedor', verbose_name='Casa Matriz'),
        ),
        migrations.AlterField(
            model_name='cliente',
            name='codigoprovincia',
            field=models.ForeignKey(db_column='codigoprovincia', default='HB', on_delete=django.db.models.deletion.PROTECT, to='Nomencladores.provincia', verbose_name='Provincia'),
        ),
        migrations.AlterField(
            model_name='equipo',
            name='UM',
            field=models.ForeignKey(db_column='codigoum', on_delete=django.db.models.deletion.PROTECT, to='Nomencladores.um'),
        ),
        migrations.AlterField(
            model_name='equipo',
            name='marca',
            field=models.ForeignKey(db_column='codigomarca', on_delete=django.db.models.deletion.PROTECT, to='Nomencladores.marca', verbose_name='Marca'),
        ),
        migrations.AlterField(
            model_name='marca',
            name='pais',
            field=models.ForeignKey(db_column='codigopais', on_delete=django.db.models.deletion.PROTECT, to='Nomencladores.pais', verbose_name='País'),
        ),
        migrations.AlterField(
            model_name='neumatico',
            name='UM',
            field=models.ForeignKey(db_column='codigoum', on_delete=django.db.models.deletion.PROTECT, to='Nomencladores.um'),
        ),
        migrations.AlterField(
            model_name='neumatico',
            name='diametro',
            field=models.FloatField(max_length=4, validators=[Nomencladores.models.validate_diametro]),
        ),
        migrations.AlterField(
            model_name='neumatico',
            name='grosor',
            field=models.FloatField(max_length=4, validators=[Nomencladores.models.validate_grosor]),
        ),
        migrations.AlterField(
            model_name='neumatico',
            name='marca',
            field=models.ForeignKey(db_column='codigomarca', on_delete=django.db.models.deletion.PROTECT, to='Nomencladores.marca', verbose_name='Marca'),
        ),
        migrations.AlterField(
            model_name='osde',
            name='ministerio',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='Nomencladores.ministerio', verbose_name='Ministerio'),
        ),
        migrations.AlterField(
            model_name='pais',
            name='nompais',
            field=models.CharField(max_length=100, validators=[Nomencladores.models.nombre_validator], verbose_name='Nombre'),
        ),
        migrations.AlterField(
            model_name='ppa',
            name='UM',
            field=models.ForeignKey(db_column='codigoum', on_delete=django.db.models.deletion.PROTECT, to='Nomencladores.um'),
        ),
        migrations.AlterField(
            model_name='ppa',
            name='marca',
            field=models.ForeignKey(db_column='codigomarca', on_delete=django.db.models.deletion.PROTECT, to='Nomencladores.marca', verbose_name='Marca'),
        ),
        migrations.AlterField(
            model_name='proveedor',
            name='codigopais',
            field=models.ForeignKey(db_column='codigopais', on_delete=django.db.models.deletion.PROTECT, to='Nomencladores.pais', verbose_name='País'),
        ),
        migrations.AlterField(
            model_name='provincia',
            name='capital',
            field=models.CharField(max_length=100, validators=[Nomencladores.models.nombre_validator]),
        ),
        migrations.AlterField(
            model_name='provincia',
            name='codigoprovincia',
            field=models.CharField(max_length=3, primary_key=True, serialize=False, validators=[Nomencladores.models.nombre_validator], verbose_name='Abreviatura'),
        ),
        migrations.AlterField(
            model_name='provincia',
            name='nombre',
            field=models.CharField(max_length=100, validators=[Nomencladores.models.nombre_validator]),
        ),
        migrations.AlterField(
            model_name='sucursal_cuba',
            name='codmincex',
            field=models.ForeignKey(db_column='codmincex', on_delete=django.db.models.deletion.PROTECT, to='Nomencladores.proveedor', verbose_name='Sucursal en Cuba'),
        ),
    ]
