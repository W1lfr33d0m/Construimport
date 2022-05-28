# Generated by Django 4.0.1 on 2022-05-27 22:54

import Nomencladores.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0062_alter_cliente_telefono_alter_ministerio_telefono_and_more'),
    ]

    operations = [
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
