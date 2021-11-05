# Generated by Django 3.2.9 on 2021-11-04 14:30

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Cliente',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('NumContratoCliente', models.CharField(max_length=50, verbose_name='Codigo')),
                ('NombreCliente', models.TextField(max_length=100, verbose_name='Nombre')),
            ],
            options={
                'verbose_name': 'Cliente',
                'verbose_name_plural': 'Clientes',
            },
        ),
        migrations.CreateModel(
            name='Producto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('CodigoProducto', models.CharField(max_length=50, verbose_name='Codigo')),
                ('DescripcionProducto', models.TextField(verbose_name='')),
                ('Precio', models.FloatField(verbose_name='')),
                ('Cantidad', models.IntegerField(verbose_name='')),
            ],
            options={
                'verbose_name': 'Producto',
                'verbose_name_plural': 'Productos',
            },
        ),
        migrations.CreateModel(
            name='Proveedor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('NumContratoProveedor', models.CharField(max_length=50, verbose_name='Codigo')),
                ('NombreProveedor', models.TextField(max_length=100, verbose_name='Nombre')),
            ],
            options={
                'verbose_name': 'Proveedor',
                'verbose_name_plural': 'Proveedores',
            },
        ),
    ]
