# Generated by Django 4.0.1 on 2022-04-21 10:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0004_rename_numpais_pais_id'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='pais',
            name='codigopais',
        ),
        migrations.AlterField(
            model_name='pais',
            name='id',
            field=models.CharField(max_length=3, primary_key=True, serialize=False, verbose_name='Código'),
        ),
    ]
