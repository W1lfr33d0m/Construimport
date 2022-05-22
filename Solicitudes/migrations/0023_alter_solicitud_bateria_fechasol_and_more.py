# Generated by Django 4.0.1 on 2022-05-21 10:17

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Solicitudes', '0022_alter_solicitud_bateria_fechasol_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='solicitud_bateria',
            name='fechasol',
            field=models.DateField(default=datetime.date(2022, 5, 21), editable=False, verbose_name='Fecha de la Solicitud'),
        ),
        migrations.AlterField(
            model_name='solicitud_equipo',
            name='fechasol',
            field=models.DateField(default=datetime.date(2022, 5, 21), editable=False, verbose_name='Fecha de la Solicitud'),
        ),
        migrations.AlterField(
            model_name='solicitud_neumatico',
            name='fechasol',
            field=models.DateField(default=datetime.date(2022, 5, 21), editable=False, verbose_name='Fecha de la Solicitud'),
        ),
        migrations.AlterField(
            model_name='solicitud_ppa',
            name='fechasol',
            field=models.DateField(default=datetime.date(2022, 5, 21), editable=False, verbose_name='Fecha de la Solicitud'),
        ),
    ]
