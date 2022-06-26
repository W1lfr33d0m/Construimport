# Generated by Django 4.0.1 on 2022-06-25 22:07

import Nomencladores.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0005_cliente_fecha_caducidad_alter_cliente_fecha_contrato_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='bateria',
            name='activo',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='cliente',
            name='activo',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='equipo',
            name='activo',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='marca',
            name='activa',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='neumatico',
            name='activo',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='ppa',
            name='activo',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='proveedor',
            name='activo',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='cliente',
            name='telefono',
            field=models.IntegerField(unique=True, validators=[Nomencladores.models.validate_telefono], verbose_name='Teléfono'),
        ),
        migrations.AlterField(
            model_name='ministerio',
            name='telefono',
            field=models.IntegerField(unique=True, validators=[Nomencladores.models.validate_telefono], verbose_name='Teléfono'),
        ),
        migrations.AlterField(
            model_name='osde',
            name='telefono',
            field=models.IntegerField(unique=True, validators=[Nomencladores.models.validate_telefono], verbose_name='Teléfono'),
        ),
        migrations.AlterField(
            model_name='pais',
            name='nompais',
            field=models.CharField(max_length=100, validators=[Nomencladores.models.nombre_validator], verbose_name='Nombre'),
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
    ]
