# Generated by Django 4.0.1 on 2022-04-23 16:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Solicitudes', '0002_alter_solicitud_bateria_numsolicitud_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='solicitud_bateria',
            name='numsolicitud',
            field=models.AutoField(editable=False, primary_key=True, serialize=False, verbose_name='Número'),
        ),
        migrations.AlterField(
            model_name='solicitud_equipo',
            name='numsolicitud',
            field=models.AutoField(editable=False, primary_key=True, serialize=False, verbose_name='Número'),
        ),
        migrations.AlterField(
            model_name='solicitud_neumatico',
            name='numsolicitud',
            field=models.AutoField(editable=False, primary_key=True, serialize=False, verbose_name='Número'),
        ),
        migrations.AlterField(
            model_name='solicitud_ppa',
            name='numsolicitud',
            field=models.AutoField(editable=False, primary_key=True, serialize=False, verbose_name='Número'),
        ),
    ]