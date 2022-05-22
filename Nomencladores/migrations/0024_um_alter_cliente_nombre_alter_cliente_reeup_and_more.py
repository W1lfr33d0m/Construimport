# Generated by Django 4.0.1 on 2022-05-22 11:07

import Nomencladores.models
import Nomencladores.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0023_alter_cliente_reeup_alter_ministerio_reeup_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='UM',
            fields=[
                ('codigoum', models.CharField(max_length=5, primary_key=True, serialize=False, verbose_name='Código')),
                ('descripcionum', models.CharField(max_length=10, unique=True, verbose_name='Descripción')),
            ],
            options={
                'verbose_name': 'Unidad de Medida',
                'verbose_name_plural': 'Unidades de Medida',
                'db_table': 'um',
                'managed': True,
            },
        ),
        migrations.AlterField(
            model_name='cliente',
            name='nombre',
            field=models.CharField(max_length=100, unique=True, validators=[Nomencladores.validators.UnicodenameValidator, Nomencladores.models.nombre_validator], verbose_name='Nombre'),
        ),
        migrations.AlterField(
            model_name='cliente',
            name='reeup',
            field=models.CharField(max_length=11, primary_key=True, serialize=False, validators=[Nomencladores.validators.UnicodeREEUPValidator, Nomencladores.models.reeup_validator], verbose_name='Código REEUP'),
        ),
        migrations.AlterField(
            model_name='cliente',
            name='representante',
            field=models.CharField(max_length=40, validators=[Nomencladores.models.validate_representante], verbose_name='Representante'),
        ),
        migrations.AlterField(
            model_name='cliente',
            name='siglas',
            field=models.CharField(max_length=15, unique=True, validators=[Nomencladores.validators.UnicodenameValidator, Nomencladores.models.nombre_validator], verbose_name='Siglas'),
        ),
        migrations.AlterField(
            model_name='ministerio',
            name='nombre',
            field=models.CharField(max_length=100, unique=True, validators=[Nomencladores.validators.UnicodenameValidator, Nomencladores.models.nombre_validator], verbose_name='Nombre'),
        ),
        migrations.AlterField(
            model_name='ministerio',
            name='reeup',
            field=models.CharField(max_length=11, primary_key=True, serialize=False, validators=[Nomencladores.validators.UnicodeREEUPValidator, Nomencladores.models.reeup_validator], verbose_name='Código REEUP'),
        ),
        migrations.AlterField(
            model_name='ministerio',
            name='siglas',
            field=models.CharField(max_length=15, unique=True, validators=[Nomencladores.validators.UnicodenameValidator, Nomencladores.models.nombre_validator], verbose_name='Siglas'),
        ),
        migrations.AlterField(
            model_name='osde',
            name='nombre',
            field=models.CharField(max_length=100, unique=True, validators=[Nomencladores.validators.UnicodenameValidator, Nomencladores.models.nombre_validator], verbose_name='Nombre'),
        ),
        migrations.AlterField(
            model_name='osde',
            name='reeup',
            field=models.CharField(max_length=11, primary_key=True, serialize=False, validators=[Nomencladores.validators.UnicodeREEUPValidator, Nomencladores.models.reeup_validator], verbose_name='Código REEUP'),
        ),
        migrations.AlterField(
            model_name='osde',
            name='siglas',
            field=models.CharField(max_length=15, unique=True, validators=[Nomencladores.validators.UnicodenameValidator, Nomencladores.models.nombre_validator], verbose_name='Siglas'),
        ),
        migrations.AlterField(
            model_name='pais',
            name='codigopais',
            field=models.CharField(max_length=20, primary_key=True, serialize=False, validators=[Nomencladores.models.codigopais_validator], verbose_name='Código'),
        ),
        migrations.AlterField(
            model_name='pais',
            name='nompais',
            field=models.CharField(max_length=100, validators=[Nomencladores.models.nombre_validator], verbose_name='Nombre'),
        ),
        migrations.AlterField(
            model_name='provincia',
            name='capital',
            field=models.CharField(default=1, max_length=100, validators=[Nomencladores.models.nombre_validator]),
            preserve_default=False,
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
    ]
