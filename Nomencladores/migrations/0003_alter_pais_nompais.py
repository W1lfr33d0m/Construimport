# Generated by Django 4.0.1 on 2022-04-20 15:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0002_bateria_equipo_neumatico_ppa_proveedor_provincia_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pais',
            name='nompais',
            field=models.CharField(max_length=30, verbose_name='Nombre'),
        ),
    ]
