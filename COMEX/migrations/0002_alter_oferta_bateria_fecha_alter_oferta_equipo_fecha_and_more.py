# Generated by Django 4.0.1 on 2022-06-18 09:53

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('COMEX', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='oferta_bateria',
            name='fecha',
            field=models.DateField(blank=True, default=datetime.date(2022, 6, 18), verbose_name='Fecha de la Oferta'),
        ),
        migrations.AlterField(
            model_name='oferta_equipo',
            name='fecha',
            field=models.DateField(blank=True, default=datetime.date(2022, 6, 18), verbose_name='Fecha de la Oferta'),
        ),
        migrations.AlterField(
            model_name='oferta_neumatico',
            name='fecha',
            field=models.DateField(blank=True, default=datetime.date(2022, 6, 18), verbose_name='Fecha de la Oferta'),
        ),
        migrations.AlterField(
            model_name='oferta_ppa',
            name='fecha',
            field=models.DateField(blank=True, default=datetime.date(2022, 6, 18), verbose_name='Fecha de la Oferta'),
        ),
    ]