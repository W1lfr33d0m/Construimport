# Generated by Django 4.0.1 on 2022-04-22 07:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0021_proveedor_marca'),
    ]

    operations = [
        migrations.AlterField(
            model_name='marca',
            name='codigomarca',
            field=models.CharField(max_length=5, primary_key=True, serialize=False, verbose_name='Código'),
        ),
    ]
