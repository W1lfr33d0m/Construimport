# Generated by Django 4.0.1 on 2022-04-24 16:00

import Solicitudes.models
import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Solicitudes', '0005_alter_solicitud_bateria_fechasol_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='solicitud_bateria',
            name='fechasol',
            field=models.DateField(default=datetime.date(2022, 4, 24), validators=[Solicitudes.models.validate_fecha], verbose_name='Fecha'),
        ),
        migrations.AlterField(
            model_name='solicitud_equipo',
            name='fechasol',
            field=models.DateField(default=datetime.date(2022, 4, 24), validators=[Solicitudes.models.validate_fecha], verbose_name='Fecha'),
        ),
        migrations.AlterField(
            model_name='solicitud_neumatico',
            name='fechasol',
            field=models.DateField(default=datetime.date(2022, 4, 24), validators=[Solicitudes.models.validate_fecha], verbose_name='Fecha'),
        ),
        migrations.AlterField(
            model_name='solicitud_ppa',
            name='fechasol',
            field=models.DateField(default=datetime.date(2022, 4, 24), validators=[Solicitudes.models.validate_fecha], verbose_name='Fecha'),
        ),
    ]
