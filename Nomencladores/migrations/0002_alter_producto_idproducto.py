# Generated by Django 4.0.1 on 2022-02-10 17:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='producto',
            name='idproducto',
            field=models.IntegerField(primary_key=True, serialize=False),
        ),
    ]
