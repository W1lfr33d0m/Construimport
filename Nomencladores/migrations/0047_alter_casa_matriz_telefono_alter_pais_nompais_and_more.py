# Generated by Django 4.0.1 on 2022-05-26 07:19

import Nomencladores.models
import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0046_alter_pais_nompais_alter_provincia_capital_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='casa_matriz',
            name='telefono',
            field=models.BigIntegerField(validators=[django.core.validators.MaxLengthValidator(8), django.core.validators.MinLengthValidator(8), django.core.validators.MinValueValidator(1)], verbose_name='Teléfono'),
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
        migrations.AlterField(
            model_name='sucursal_cuba',
            name='telefono',
            field=models.BigIntegerField(validators=[django.core.validators.MaxLengthValidator(8), django.core.validators.MinLengthValidator(8), django.core.validators.MinValueValidator(1)], verbose_name='Teléfono'),
        ),
    ]
