# Generated by Django 4.0.1 on 2022-04-21 11:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0006_alter_pais_id'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='pais',
            name='id',
        ),
        migrations.AddField(
            model_name='pais',
            name='codigopais',
            field=models.CharField(default=1, max_length=3, primary_key=True, serialize=False, verbose_name='Código'),
            preserve_default=False,
        ),
    ]
