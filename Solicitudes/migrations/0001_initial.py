# Generated by Django 4.0.1 on 2022-04-07 17:27

import Solicitudes.models
import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('Nomencladores', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='RegistroControlSolicitud',
            fields=[
                ('numsolicitud', models.AutoField(editable=False, primary_key=True, serialize=False, verbose_name='Número')),
                ('fechasol', models.DateField(default=datetime.date(2022, 4, 7), validators=[Solicitudes.models.validate_fecha], verbose_name='Fecha')),
                ('cantidad', models.IntegerField(validators=[Solicitudes.models.validate_cantidad])),
                ('estado', models.CharField(choices=[('Aprobada', 'Aprobada'), ('Denegada', 'Denegada'), ('Pendiente', 'Pendiente')], default='Pendiente', max_length=10, null=True)),
            ],
            options={
                'verbose_name': 'Registro de Solicitud',
                'verbose_name_plural': 'Registro de Solicitudes',
                'db_table': 'registro_control_solicitud',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Solicitud',
            fields=[
                ('numsolicitud', models.AutoField(editable=False, primary_key=True, serialize=False, verbose_name='Número')),
                ('fechasol', models.DateField(default=datetime.date(2022, 4, 7), validators=[Solicitudes.models.validate_fecha], verbose_name='Fecha')),
                ('estado', models.CharField(choices=[('Aprobada', 'Aprobada'), ('Cancelada', 'Cancelada'), ('Pendiente', 'Pendiente')], default='Pendiente', max_length=10, null=True)),
                ('observaciones', models.TextField(blank=True, max_length=150, null=True, verbose_name='Observaciones')),
            ],
            options={
                'verbose_name': 'Solicitud',
                'verbose_name_plural': 'Solicitudes',
                'db_table': 'solicitud',
                'ordering': ['numsolicitud', 'fechasol'],
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='SolicitudesBackupview',
            fields=[
                ('ids', models.BigAutoField(primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'Solicitudes_backupview',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Solicitud_Producto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cantidad', models.IntegerField(validators=[Solicitudes.models.validate_cantidad])),
                ('codmincex', models.ForeignKey(blank=True, db_column='codmincex', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='Nomencladores.proveedor', verbose_name='Proveedor')),
                ('idproducto', models.ForeignKey(db_column='idproducto', on_delete=django.db.models.deletion.CASCADE, to='Nomencladores.producto', verbose_name='Producto')),
                ('numsolicitud', models.ForeignKey(db_column='numsolicitud', on_delete=django.db.models.deletion.CASCADE, to='Solicitudes.solicitud')),
            ],
            options={
                'verbose_name': 'Producto',
                'verbose_name_plural': 'Productos',
                'db_table': 'solicitud_producto',
                'managed': True,
            },
        ),
    ]
