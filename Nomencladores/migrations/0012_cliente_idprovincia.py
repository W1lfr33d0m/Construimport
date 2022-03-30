# Generated by Django 4.0.1 on 2022-03-27 14:39

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0011_alter_cliente_options_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='cliente',
            name='idprovincia',
            field=models.ForeignKey(db_column='idprovincia', default=2, on_delete=django.db.models.deletion.DO_NOTHING, to='Nomencladores.provincia', verbose_name='Provincia'),
            preserve_default=False,
        ),
    ]