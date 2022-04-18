# Generated by Django 4.0.1 on 2022-04-17 04:20

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
            name='Solicitud_Bateria',
            fields=[
                ('numsolicitud', models.AutoField(editable=False, primary_key=True, serialize=False, verbose_name='Número')),
                ('fechasol', models.DateField(default=datetime.date(2022, 4, 17), validators=[Solicitudes.models.validate_fecha], verbose_name='Fecha')),
                ('estado', models.CharField(choices=[('Aprobada', 'Aprobada'), ('Cancelada', 'Cancelada'), ('Pendiente', 'Pendiente')], default='Pendiente', max_length=10, null=True)),
                ('observaciones', models.TextField(blank=True, max_length=150, null=True, verbose_name='Observaciones')),
                ('valor_estimado', models.FloatField(max_length=10, verbose_name='Valor Estimado')),
            ],
            options={
                'verbose_name': 'Solicitud de Batería',
                'verbose_name_plural': 'Solicitudes de Baterías',
                'db_table': 'solicitud_bateria',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Solicitud_Equipo',
            fields=[
                ('numsolicitud', models.AutoField(editable=False, primary_key=True, serialize=False, verbose_name='Número')),
                ('fechasol', models.DateField(default=datetime.date(2022, 4, 17), validators=[Solicitudes.models.validate_fecha], verbose_name='Fecha')),
                ('estado', models.CharField(choices=[('Aprobada', 'Aprobada'), ('Cancelada', 'Cancelada'), ('Pendiente', 'Pendiente')], default='Pendiente', max_length=10, null=True)),
                ('observaciones', models.TextField(blank=True, max_length=150, null=True, verbose_name='Observaciones')),
                ('valor_estimado', models.FloatField(max_length=10, verbose_name='Valor Estimado')),
            ],
            options={
                'verbose_name': 'Solicitud de Equipo',
                'verbose_name_plural': 'Solicitudes de Equipos',
                'db_table': 'solicitud_equipo',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Solicitud_Neumatico',
            fields=[
                ('numsolicitud', models.AutoField(editable=False, primary_key=True, serialize=False, verbose_name='Número')),
                ('fechasol', models.DateField(default=datetime.date(2022, 4, 17), validators=[Solicitudes.models.validate_fecha], verbose_name='Fecha')),
                ('estado', models.CharField(choices=[('Aprobada', 'Aprobada'), ('Cancelada', 'Cancelada'), ('Pendiente', 'Pendiente')], default='Pendiente', max_length=10, null=True)),
                ('observaciones', models.TextField(blank=True, max_length=150, null=True, verbose_name='Observaciones')),
                ('valor_estimado', models.FloatField(max_length=10, verbose_name='Valor Estimado')),
            ],
            options={
                'verbose_name': 'Solicitud de Neumático',
                'verbose_name_plural': 'Solicitudes de Neumáticos',
                'db_table': 'solicitud_neumatico',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Solicitud_PPA',
            fields=[
                ('numsolicitud', models.AutoField(editable=False, primary_key=True, serialize=False, verbose_name='Número')),
                ('fechasol', models.DateField(default=datetime.date(2022, 4, 17), validators=[Solicitudes.models.validate_fecha], verbose_name='Fecha')),
                ('estado', models.CharField(choices=[('Aprobada', 'Aprobada'), ('Cancelada', 'Cancelada'), ('Pendiente', 'Pendiente')], default='Pendiente', max_length=10, null=True)),
                ('observaciones', models.TextField(blank=True, max_length=150, null=True, verbose_name='Observaciones')),
                ('valor_estimado', models.FloatField(max_length=10, verbose_name='Valor Estimado')),
            ],
            options={
                'verbose_name': 'Solicitud de Partes, Piezas y Accesorios',
                'verbose_name_plural': 'Solicitudes de Partes, Piezas y Accesorios',
                'db_table': 'solicitud_ppa',
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
            name='Solicitud_PPA_Proxy',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cantidad', models.IntegerField(validators=[Solicitudes.models.validate_cantidad])),
                ('idproducto', models.ForeignKey(db_column='idproducto', on_delete=django.db.models.deletion.CASCADE, to='Nomencladores.ppa', verbose_name='Producto')),
                ('numsolicitud', models.ForeignKey(db_column='numsolicitud', on_delete=django.db.models.deletion.CASCADE, to='Solicitudes.solicitud_ppa')),
            ],
            options={
                'verbose_name': 'Partes, Piezas y Accesorios',
                'verbose_name_plural': 'Partes, Piezas y Accesorios',
                'db_table': 'solicitud_ppa_proxy',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Solicitud_PPA_Proveedor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codmincex', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Nomencladores.proveedor', verbose_name='Proveedor')),
                ('numsolicitud', models.ForeignKey(db_column='numsolicitud', on_delete=django.db.models.deletion.CASCADE, to='Solicitudes.solicitud_ppa')),
            ],
            options={
                'verbose_name': 'Proveedor',
                'verbose_name_plural': 'Proveedores',
                'db_table': 'solicitud_ppa_poveedor',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Solicitud_Neumatico_Proxy',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cantidad', models.IntegerField(validators=[Solicitudes.models.validate_cantidad])),
                ('idproducto', models.ForeignKey(db_column='idproducto', on_delete=django.db.models.deletion.CASCADE, to='Nomencladores.neumatico', verbose_name='Neumático')),
                ('numsolicitud', models.ForeignKey(db_column='numsolicitud', on_delete=django.db.models.deletion.CASCADE, to='Solicitudes.solicitud_neumatico')),
            ],
            options={
                'verbose_name': 'Neumático',
                'verbose_name_plural': 'Neumáticos',
                'db_table': 'solicitud_neumatico_proxy',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Solicitud_Neumatico_Proveedor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codmincex', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Nomencladores.proveedor', verbose_name='Proveedor')),
                ('numsolicitud', models.ForeignKey(db_column='numsolicitud', on_delete=django.db.models.deletion.CASCADE, to='Solicitudes.solicitud_neumatico')),
            ],
            options={
                'verbose_name': 'Proveedor',
                'verbose_name_plural': 'Proveedores',
                'db_table': 'solicitud_neumatico_poveedor',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Solicitud_Equipo_Proxy',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cantidad', models.IntegerField(validators=[Solicitudes.models.validate_cantidad])),
                ('idproducto', models.ForeignKey(db_column='idproducto', on_delete=django.db.models.deletion.CASCADE, to='Nomencladores.equipo')),
                ('numsolicitud', models.ForeignKey(db_column='numsolicitud', on_delete=django.db.models.deletion.CASCADE, to='Solicitudes.solicitud_equipo')),
            ],
            options={
                'verbose_name': 'Equipo',
                'verbose_name_plural': 'Equipos',
                'db_table': 'solicitud_equipo_proxy',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Solicitud_Equipo_Proveedor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codmincex', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Nomencladores.proveedor', verbose_name='Proveedor')),
                ('numsolicitud', models.ForeignKey(db_column='numsolicitud', on_delete=django.db.models.deletion.CASCADE, to='Solicitudes.solicitud_equipo')),
            ],
            options={
                'verbose_name': 'Proveedor',
                'verbose_name_plural': 'Proveedores',
                'db_table': 'solicitud_equipo_poveedor',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Solicitud_Bateria_Proxy',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cantidad', models.IntegerField(validators=[Solicitudes.models.validate_cantidad])),
                ('idproducto', models.ForeignKey(db_column='idproducto', on_delete=django.db.models.deletion.CASCADE, to='Nomencladores.bateria', verbose_name='Batería')),
                ('numsolicitud', models.ForeignKey(db_column='numsolicitud', on_delete=django.db.models.deletion.CASCADE, to='Solicitudes.solicitud_bateria')),
            ],
            options={
                'verbose_name': 'Batería',
                'verbose_name_plural': 'Baterías',
                'db_table': 'solicitud_bateria_proxy',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Solicitud_Bateria_Proveedor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codmincex', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Nomencladores.proveedor', verbose_name='Proveedor')),
                ('numsolicitud', models.ForeignKey(db_column='numsolicitud', on_delete=django.db.models.deletion.CASCADE, to='Solicitudes.solicitud_bateria')),
            ],
            options={
                'verbose_name': 'Proveedor',
                'verbose_name_plural': 'Proveedores',
                'db_table': 'solicitud_bateria_poveedor',
                'managed': True,
            },
        ),
    ]
