# Generated by Django 4.0.1 on 2022-05-05 11:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0007_alter_marca_codigomarca'),
        ('Solicitudes', '0005_alter_solicitud_bateria_fechasol_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='solicitud_equipo',
            name='equipo',
            field=models.ManyToManyField(related_name='Equipos', through='Solicitudes.Solicitud_Equipo_Proxy', to='Nomencladores.Equipo'),
        ),
        migrations.AlterField(
            model_name='solicitud_equipo',
            name='proveedores',
            field=models.ManyToManyField(related_name='Proveedores', through='Solicitudes.Solicitud_Equipo_Proveedor', to='Nomencladores.Proveedor'),
        ),
    ]
