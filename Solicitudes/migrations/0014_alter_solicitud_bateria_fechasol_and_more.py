# Generated by Django 4.0.1 on 2022-06-28 17:03

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('Solicitudes', '0013_alter_solicitud_bateria_fechasol_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='solicitud_bateria',
            name='fechasol',
            field=models.DateTimeField(default=django.utils.timezone.now, editable=False, verbose_name='Fecha de la Solicitud'),
        ),
        migrations.AlterField(
            model_name='solicitud_equipo',
            name='fechasol',
            field=models.DateTimeField(default=django.utils.timezone.now, editable=False, verbose_name='Fecha de la Solicitud'),
        ),
        migrations.AlterField(
            model_name='solicitud_neumatico',
            name='fechasol',
            field=models.DateTimeField(default=django.utils.timezone.now, editable=False, verbose_name='Fecha de la Solicitud'),
        ),
        migrations.AlterField(
            model_name='solicitud_ppa',
            name='fechasol',
            field=models.DateTimeField(default=django.utils.timezone.now, editable=False, verbose_name='Fecha de la Solicitud'),
        ),
    ]
