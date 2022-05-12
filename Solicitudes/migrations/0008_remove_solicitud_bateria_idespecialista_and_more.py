# Generated by Django 4.0.1 on 2022-05-06 08:38

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('Solicitudes', '0007_alter_solicitud_bateria_fechasol_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='solicitud_bateria',
            name='idespecialista',
        ),
        migrations.RemoveField(
            model_name='solicitud_equipo',
            name='idespecialista',
        ),
        migrations.RemoveField(
            model_name='solicitud_neumatico',
            name='idespecialista',
        ),
        migrations.RemoveField(
            model_name='solicitud_ppa',
            name='idespecialista',
        ),
        migrations.AddField(
            model_name='solicitud_bateria',
            name='especialista',
            field=models.ForeignKey(db_column='username', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL, verbose_name='Especialista COMEX'),
        ),
        migrations.AddField(
            model_name='solicitud_equipo',
            name='especialista',
            field=models.ForeignKey(db_column='username', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL, verbose_name='Especialista COMEX'),
        ),
        migrations.AddField(
            model_name='solicitud_neumatico',
            name='especialista',
            field=models.ForeignKey(db_column='username', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL, verbose_name='Especialista COMEX'),
        ),
        migrations.AddField(
            model_name='solicitud_ppa',
            name='especialista',
            field=models.ForeignKey(db_column='username', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL, verbose_name='Especialista COMEX'),
        ),
    ]