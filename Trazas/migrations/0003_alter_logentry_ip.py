# Generated by Django 4.0.1 on 2022-05-24 17:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Trazas', '0002_logentry_ip'),
    ]

    operations = [
        migrations.AlterField(
            model_name='logentry',
            name='ip',
            field=models.GenericIPAddressField(verbose_name='Dirección IP'),
        ),
    ]
