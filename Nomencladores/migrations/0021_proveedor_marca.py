# Generated by Django 4.0.1 on 2022-04-21 22:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0020_alter_bateria_idproducto_alter_equipo_idproducto_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='proveedor',
            name='marca',
            field=models.ManyToManyField(to='Nomencladores.Marca', verbose_name='Marcas'),
        ),
    ]