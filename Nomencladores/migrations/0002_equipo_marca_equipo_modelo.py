# Generated by Django 4.0.1 on 2022-04-15 22:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='equipo',
            name='marca',
            field=models.CharField(default=1, max_length=30),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='equipo',
            name='modelo',
            field=models.CharField(default=1, max_length=30),
            preserve_default=False,
        ),
    ]