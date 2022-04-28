# Generated by Django 4.0.1 on 2022-04-27 08:41

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Solicitudes', '0008_alter_solicitud_bateria_fechasol_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='solicitud_bateria',
            name='idespecialista',
        ),
        migrations.RemoveField(
            model_name='solicitud_equipo',
            name='idespecialista',
        ),
        migrations.RemoveField(
            model_name='solicitud_neumatico',
            name='idespecialista',
        ),
        migrations.RemoveField(
            model_name='solicitud_ppa',
            name='idespecialista',
        ),
        migrations.AlterField(
            model_name='solicitud_bateria',
            name='fechasol',
            field=models.DateField(default=datetime.date(2022, 4, 27), verbose_name='Fecha de la Solicitud'),
        ),
        migrations.AlterField(
            model_name='solicitud_equipo',
            name='fechasol',
            field=models.DateField(default=datetime.date(2022, 4, 27), verbose_name='Fecha de la Solicitud'),
        ),
        migrations.AlterField(
            model_name='solicitud_neumatico',
            name='fechasol',
            field=models.DateField(default=datetime.date(2022, 4, 27), verbose_name='Fecha de la Solicitud'),
        ),
        migrations.AlterField(
            model_name='solicitud_ppa',
            name='fechasol',
            field=models.DateField(default=datetime.date(2022, 4, 27), verbose_name='Fecha de la Solicitud'),
        ),
    ]
