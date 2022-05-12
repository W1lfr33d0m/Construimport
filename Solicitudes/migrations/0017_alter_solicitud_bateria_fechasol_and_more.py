# Generated by Django 4.0.1 on 2022-05-09 09:23

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Solicitudes', '0016_remove_solicitud_ppa_equipo'),
    ]

    operations = [
        migrations.AlterField(
            model_name='solicitud_bateria',
            name='fechasol',
            field=models.DateField(default=datetime.date(2022, 5, 9), editable=False, verbose_name='Fecha de la Solicitud'),
        ),
        migrations.AlterField(
            model_name='solicitud_equipo',
            name='fechasol',
            field=models.DateField(default=datetime.date(2022, 5, 9), editable=False, verbose_name='Fecha de la Solicitud'),
        ),
        migrations.AlterField(
            model_name='solicitud_neumatico',
            name='fechasol',
            field=models.DateField(default=datetime.date(2022, 5, 9), editable=False, verbose_name='Fecha de la Solicitud'),
        ),
        migrations.AlterField(
            model_name='solicitud_ppa',
            name='fechasol',
            field=models.DateField(default=datetime.date(2022, 5, 9), editable=False, verbose_name='Fecha de la Solicitud'),
        ),
    ]