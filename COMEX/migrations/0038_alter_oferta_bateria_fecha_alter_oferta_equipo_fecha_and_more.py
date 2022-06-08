# Generated by Django 4.0.1 on 2022-06-07 07:47

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('COMEX', '0037_alter_oferta_bateria_fecha_alter_oferta_equipo_fecha_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='oferta_bateria',
            name='fecha',
            field=models.DateField(blank=True, default=datetime.date(2022, 6, 7), verbose_name='Fecha de la Oferta'),
        ),
        migrations.AlterField(
            model_name='oferta_equipo',
            name='fecha',
            field=models.DateField(blank=True, default=datetime.date(2022, 6, 7), verbose_name='Fecha de la Oferta'),
        ),
        migrations.AlterField(
            model_name='oferta_neumatico',
            name='fecha',
            field=models.DateField(blank=True, default=datetime.date(2022, 6, 7), verbose_name='Fecha de la Oferta'),
        ),
        migrations.AlterField(
            model_name='oferta_ppa',
            name='fecha',
            field=models.DateField(blank=True, default=datetime.date(2022, 6, 7), verbose_name='Fecha de la Oferta'),
        ),
    ]
