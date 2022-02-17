# Generated by Django 4.0.1 on 2022-02-11 19:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0002_alter_producto_idproducto'),
    ]

    operations = [
        migrations.AlterField(
            model_name='producto',
            name='tipo',
            field=models.CharField(choices=[('PZ', 'PPA'), ('EQ', 'Equipo'), ('Batería', 'Batería'), ('Neumático', 'Neumático')], default='PZ', max_length=10),
        ),
    ]