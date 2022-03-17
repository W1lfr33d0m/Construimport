# Generated by Django 4.0.1 on 2022-03-17 13:24

import Nomencladores.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Almacen',
            fields=[
                ('idalmacen', models.BigIntegerField(primary_key=True, serialize=False)),
                ('tipoalmacen', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'almacen',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Cliente',
            fields=[
                ('numcontratocliente', models.IntegerField(primary_key=True, serialize=False, verbose_name='Numero de Contrato')),
                ('nomcliente', models.CharField(max_length=100, validators=[Nomencladores.validators.UnicodenameValidator()], verbose_name='Nombre')),
                ('OSDE', models.CharField(max_length=45, validators=[Nomencladores.validators.UnicodenameValidator()])),
            ],
            options={
                'db_table': 'cliente',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Pais',
            fields=[
                ('idpais', models.CharField(max_length=3, primary_key=True, serialize=False, verbose_name='Código')),
                ('pais', models.CharField(max_length=30)),
            ],
            options={
                'verbose_name': 'País',
                'verbose_name_plural': 'Países',
                'db_table': 'pais',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='EspecialistaCOMEX',
            fields=[
                ('idespecialista', models.IntegerField(primary_key=True, serialize=False, verbose_name='Especialista')),
                ('nombre', models.CharField(max_length=45, validators=[Nomencladores.validators.UnicodenameValidator()], verbose_name='Nombre')),
                ('apellidos', models.CharField(max_length=45, validators=[Nomencladores.validators.UnicodenameValidator()], verbose_name='Apellidos')),
                ('categoria', models.CharField(choices=[('PZ', 'PPA'), ('EQ', 'Equipo')], default='PZ', max_length=10)),
            ],
            options={
                'verbose_name': 'Especialista COMEX',
                'verbose_name_plural': 'Especialistas COMEX',
                'db_table': 'especialista_comex',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Producto',
            fields=[
                ('idproducto', models.IntegerField(primary_key=True, serialize=False, verbose_name='Código')),
                ('nombreproducto', models.CharField(max_length=50, validators=[Nomencladores.validators.UnicodenameValidator], verbose_name='Descripción')),
                ('tipo', models.CharField(choices=[('PZ', 'PPA'), ('EQ', 'Equipo'), ('Batería', 'Batería'), ('Neumático', 'Neumático')], default='PZ', max_length=10)),
                ('UM', models.CharField(choices=[('U', 'U'), ('SET', 'SET')], default='U', max_length=5)),
            ],
            options={
                'verbose_name': 'Producto',
                'verbose_name_plural': 'Productos',
                'db_table': 'producto',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Provincia',
            fields=[
                ('idprovincia', models.CharField(max_length=3, primary_key=True, serialize=False, unique=True)),
                ('nombre', models.CharField(max_length=100, unique=True)),
                ('capital', models.CharField(blank=True, max_length=100, null=True)),
            ],
            options={
                'verbose_name': 'Provincia',
                'verbose_name_plural': 'Provincias',
                'db_table': 'provincia',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Proveedor',
            fields=[
                ('numcontratoproveedor', models.IntegerField(primary_key=True, serialize=False, verbose_name='Numero de Contrato')),
                ('nomproveedor', models.CharField(max_length=45, validators=[Nomencladores.validators.UnicodenameValidator()], verbose_name='Nombre')),
                ('idpais', models.ForeignKey(db_column='idpais', on_delete=django.db.models.deletion.CASCADE, to='Nomencladores.pais', verbose_name='País')),
                ('idproducto', models.ForeignKey(db_column='idproducto', on_delete=django.db.models.deletion.CASCADE, to='Nomencladores.producto', verbose_name='Producto')),
            ],
            options={
                'verbose_name': 'Proveedor',
                'verbose_name_plural': 'Proveedores',
                'db_table': 'proveedor',
                'managed': True,
                'unique_together': {('numcontratoproveedor', 'idpais')},
            },
        ),
    ]
