# Generated by Django 4.0.1 on 2022-06-28 16:58

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Solicitudes', '0011_alter_solicitud_bateria_fecha_venc_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='solicitud_bateria',
            name='fechasol',
            field=models.DateTimeField(default=datetime.date(2022, 6, 28), editable=False, verbose_name='Fecha de la Solicitud'),
        ),
        migrations.AlterField(
            model_name='solicitud_equipo',
            name='fechasol',
            field=models.DateTimeField(default=datetime.date(2022, 6, 28), editable=False, verbose_name='Fecha de la Solicitud'),
        ),
        migrations.AlterField(
            model_name='solicitud_neumatico',
            name='fechasol',
            field=models.DateTimeField(default=datetime.date(2022, 6, 28), editable=False, verbose_name='Fecha de la Solicitud'),
        ),
        migrations.AlterField(
            model_name='solicitud_ppa',
            name='fechasol',
            field=models.DateTimeField(default=datetime.date(2022, 6, 28), editable=False, verbose_name='Fecha de la Solicitud'),
        ),
    ]
