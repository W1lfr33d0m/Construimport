# Generated by Django 4.0.1 on 2022-05-21 10:17

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Nomencladores', '0010_marca_productos'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='marca',
            name='productos',
        ),
        migrations.AddField(
            model_name='marca',
            name='pais',
            field=models.ForeignKey(db_column='codigopais', default='RUS', on_delete=django.db.models.deletion.DO_NOTHING, to='Nomencladores.pais', verbose_name='País'),
            preserve_default=False,
        ),
    ]