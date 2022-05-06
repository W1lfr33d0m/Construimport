# Generated by Django 4.0.1 on 2022-05-05 08:25

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Solicitudes', '0005_alter_solicitud_bateria_fechasol_and_more'),
        ('Nomencladores', '0007_alter_marca_codigomarca'),
        ('COMEX', '0011_oferta_equipo_valor_estimado_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Oferta_PPA',
            fields=[
                ('numero', models.AutoField(primary_key=True, serialize=False, verbose_name='Número')),
                ('fecha', models.DateField(blank=True, default=datetime.date(2022, 5, 5), verbose_name='Fecha de la Oferta')),
                ('validez', models.CharField(choices=[('30 Días', '30 Días'), ('60 Días', '60 Días')], default='30 Días', max_length=30)),
                ('estado', models.CharField(choices=[('Aprobada', 'Aprobada'), ('Cancelada', 'Cancelada'), ('Pendiente', 'Pendiente')], default='Pendiente', max_length=30)),
                ('valor_estimado', models.FloatField(max_length=10, verbose_name='Valor Estimado')),
            ],
            options={
                'verbose_name': 'Oferta de Partes y Piezas',
                'verbose_name_plural': 'Ofertas de Partes y Piezas',
                'db_table': 'oferta_ppa',
                'managed': True,
            },
        ),
        migrations.AlterField(
            model_name='oferta_equipo',
            name='fecha',
            field=models.DateField(blank=True, default=datetime.date(2022, 5, 5), verbose_name='Fecha de la Oferta'),
        ),
        migrations.CreateModel(
            name='Oferta_PPA_Proxy',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cantidad', models.IntegerField(max_length=8)),
                ('precio', models.FloatField(max_length=8)),
                ('importe', models.FloatField(max_length=8)),
                ('equipo', models.ForeignKey(db_column='idproducto', on_delete=django.db.models.deletion.DO_NOTHING, to='Solicitudes.solicitud_ppa_proxy')),
                ('solicitud', models.ForeignKey(db_column='numsolicitud', on_delete=django.db.models.deletion.DO_NOTHING, to='COMEX.oferta_ppa')),
            ],
            options={
                'verbose_name': 'Partes y Piezas',
                'verbose_name_plural': 'Partes y Piezas',
                'db_table': 'oferta_ppa_proxy',
                'managed': True,
            },
        ),
        migrations.AddField(
            model_name='oferta_ppa',
            name='equipos',
            field=models.ManyToManyField(through='COMEX.Oferta_PPA_Proxy', to='Solicitudes.Solicitud_PPA_Proxy', verbose_name='Equipos'),
        ),
        migrations.AddField(
            model_name='oferta_ppa',
            name='especialista',
            field=models.ForeignKey(db_column='idespecialista', on_delete=django.db.models.deletion.DO_NOTHING, to='COMEX.especialistacomex'),
        ),
        migrations.AddField(
            model_name='oferta_ppa',
            name='pais',
            field=models.ForeignKey(blank=True, db_column='idpais', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='Nomencladores.pais', verbose_name='País de Origen de la carga'),
        ),
        migrations.AddField(
            model_name='oferta_ppa',
            name='proveedor',
            field=models.ForeignKey(blank=True, db_column='codmincex', on_delete=django.db.models.deletion.DO_NOTHING, to='Nomencladores.proveedor', verbose_name='Proveedor'),
        ),
        migrations.AddField(
            model_name='oferta_ppa',
            name='solicitud',
            field=models.ForeignKey(db_column='numsolicitud', on_delete=django.db.models.deletion.DO_NOTHING, to='Solicitudes.solicitud_ppa', verbose_name='Solicitud'),
        ),
    ]
