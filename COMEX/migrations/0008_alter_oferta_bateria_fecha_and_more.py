# Generated by Django 4.0.1 on 2022-07-06 00:14

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('COMEX', '0007_remove_oferta_equipo_proxy_solicitud_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='oferta_bateria',
            name='fecha',
            field=models.DateTimeField(default=django.utils.timezone.now, editable=False, verbose_name='Fecha de la Oferta'),
        ),
        migrations.AlterField(
            model_name='oferta_bateria',
            name='monto_total',
            field=models.FloatField(blank=True, null=True, verbose_name='Monto Total'),
        ),
        migrations.AlterField(
            model_name='oferta_equipo',
            name='fecha',
            field=models.DateTimeField(default=django.utils.timezone.now, editable=False, verbose_name='Fecha de la Oferta'),
        ),
        migrations.AlterField(
            model_name='oferta_equipo',
            name='monto_total',
            field=models.FloatField(blank=True, null=True, verbose_name='Monto Total'),
        ),
        migrations.AlterField(
            model_name='oferta_neumatico',
            name='fecha',
            field=models.DateTimeField(default=django.utils.timezone.now, editable=False, verbose_name='Fecha de la Oferta'),
        ),
        migrations.AlterField(
            model_name='oferta_neumatico',
            name='monto_total',
            field=models.FloatField(blank=True, null=True, verbose_name='Monto Total'),
        ),
        migrations.AlterField(
            model_name='oferta_ppa',
            name='fecha',
            field=models.DateTimeField(default=django.utils.timezone.now, editable=False, verbose_name='Fecha de la Oferta'),
        ),
        migrations.AlterField(
            model_name='oferta_ppa',
            name='monto_total',
            field=models.FloatField(blank=True, null=True, verbose_name='Monto Total'),
        ),
    ]