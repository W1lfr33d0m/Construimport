# Generated by Django 4.0.1 on 2022-04-28 19:26

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0003_alter_cliente_provincia'),
    ]

    operations = [
        migrations.RenameField(
            model_name='cliente',
            old_name='provincia',
            new_name='codigoprovincia',
        ),
    ]