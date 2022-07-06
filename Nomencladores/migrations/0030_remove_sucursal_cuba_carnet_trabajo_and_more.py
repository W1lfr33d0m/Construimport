# Generated by Django 4.0.1 on 2022-07-06 13:49

import Nomencladores.models
import Nomencladores.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0029_alter_cliente_reeup_alter_cliente_telefono_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='sucursal_cuba',
            name='carnet_trabajo',
        ),
        migrations.AlterField(
            model_name='cliente',
            name='nombre',
            field=models.CharField(max_length=100, unique=True, validators=[Nomencladores.validators.UnicodenameValidator, Nomencladores.models.nombre_validator], verbose_name='Nombre'),
        ),
        migrations.AlterField(
            model_name='cliente',
            name='siglas',
            field=models.CharField(max_length=15, unique=True, validators=[Nomencladores.validators.UnicodenameValidator, Nomencladores.models.nombre_validator], verbose_name='Siglas'),
        ),
        migrations.AlterField(
            model_name='cliente',
            name='telefono',
            field=models.IntegerField(unique=True, validators=[Nomencladores.models.validate_telefono], verbose_name='Teléfono'),
        ),
        migrations.AlterField(
            model_name='ministerio',
            name='nombre',
            field=models.CharField(max_length=100, unique=True, validators=[Nomencladores.validators.UnicodenameValidator, Nomencladores.models.nombre_validator], verbose_name='Nombre'),
        ),
        migrations.AlterField(
            model_name='ministerio',
            name='siglas',
            field=models.CharField(max_length=15, unique=True, validators=[Nomencladores.validators.UnicodenameValidator, Nomencladores.models.nombre_validator], verbose_name='Siglas'),
        ),
        migrations.AlterField(
            model_name='ministerio',
            name='telefono',
            field=models.IntegerField(unique=True, validators=[Nomencladores.models.validate_telefono], verbose_name='Teléfono'),
        ),
        migrations.AlterField(
            model_name='osde',
            name='nombre',
            field=models.CharField(max_length=100, unique=True, validators=[Nomencladores.validators.UnicodenameValidator, Nomencladores.models.nombre_validator], verbose_name='Nombre'),
        ),
        migrations.AlterField(
            model_name='osde',
            name='siglas',
            field=models.CharField(max_length=15, unique=True, validators=[Nomencladores.validators.UnicodenameValidator, Nomencladores.models.nombre_validator], verbose_name='Siglas'),
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
            model_name='proveedor',
            name='codmincex',
            field=models.CharField(max_length=7, primary_key=True, serialize=False, validators=[Nomencladores.validators.MINCEXValidator.codmincex_validator], verbose_name='Código MINCEX'),
        ),
        migrations.AlterField(
            model_name='proveedor',
            name='nomproveedor',
            field=models.CharField(max_length=100, unique=True, validators=[Nomencladores.models.nombre_validator], verbose_name='Nombre'),
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