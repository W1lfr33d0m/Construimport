# Generated by Django 4.0.1 on 2022-03-26 02:47

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0009_rename_codprovincia_provincia_id'),
    ]

    operations = [
        migrations.RenameField(
            model_name='provincia',
            old_name='id',
            new_name='idprovincia',
        ),
    ]
