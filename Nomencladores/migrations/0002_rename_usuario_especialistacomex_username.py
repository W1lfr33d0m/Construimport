# Generated by Django 4.0.1 on 2022-03-20 22:01

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='especialistacomex',
            old_name='usuario',
            new_name='username',
        ),
    ]