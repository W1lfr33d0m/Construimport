# Generated by Django 4.0.1 on 2022-05-24 17:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Trazas', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='logentry',
            name='ip',
            field=models.GenericIPAddressField(),
            preserve_default=False,
        ),
    ]