# Generated by Django 4.0.1 on 2022-03-27 15:16

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0013_alter_especialistacomex_categoria_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='cliente',
            old_name='id',
            new_name='idprovincia',
        ),
    ]