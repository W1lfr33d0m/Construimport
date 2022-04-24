# Generated by Django 4.0.1 on 2022-04-22 08:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0023_alter_marca_codigomarca'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='ppa',
            name='equipo',
        ),
        migrations.AddField(
            model_name='ppa',
            name='equipo',
            field=models.ManyToManyField(to='Nomencladores.Equipo', verbose_name='Equipos'),
        ),
    ]
