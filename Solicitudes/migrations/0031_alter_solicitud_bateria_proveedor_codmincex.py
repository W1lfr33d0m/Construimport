# Generated by Django 4.0.1 on 2022-05-26 07:09

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0044_alter_pais_nompais_alter_provincia_capital_and_more'),
        ('Solicitudes', '0030_alter_solicitud_neumatico_proxy_idproducto'),
    ]

    operations = [
        migrations.AlterField(
            model_name='solicitud_bateria_proveedor',
            name='codmincex',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Nomencladores.proveedor', verbose_name='Proveedor'),
        ),
    ]
