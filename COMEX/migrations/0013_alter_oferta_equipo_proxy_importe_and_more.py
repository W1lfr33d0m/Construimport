# Generated by Django 4.0.1 on 2022-05-05 11:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('COMEX', '0012_oferta_ppa_alter_oferta_equipo_fecha_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='oferta_equipo_proxy',
            name='importe',
            field=models.FloatField(max_length=8, null=True),
        ),
        migrations.AlterField(
            model_name='oferta_equipo_proxy',
            name='precio',
            field=models.FloatField(max_length=8, null=True),
        ),
    ]
