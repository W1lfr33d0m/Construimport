# Generated by Django 4.0.1 on 2022-05-06 11:28

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('COMEX', '0017_alter_oferta_bateria_especialista_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='oferta_equipo_proxy',
            name='solicitud',
            field=models.ForeignKey(db_column='numsolicitud', db_constraint=False, on_delete=django.db.models.deletion.DO_NOTHING, to='COMEX.oferta_equipo'),
        ),
    ]