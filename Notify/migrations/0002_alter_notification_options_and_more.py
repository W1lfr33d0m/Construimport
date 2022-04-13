# Generated by Django 4.0.1 on 2022-04-13 02:58

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('contenttypes', '0002_remove_content_type_name'),
        ('Notify', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='notification',
            options={'verbose_name': 'Notificación', 'verbose_name_plural': 'Notificaciones'},
        ),
        migrations.AlterField(
            model_name='notification',
            name='actor_content_type',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='notificar_actor', to='contenttypes.contenttype', verbose_name='Contenido'),
        ),
        migrations.AlterField(
            model_name='notification',
            name='deleted',
            field=models.BooleanField(default=False, verbose_name='Eliminada'),
        ),
        migrations.AlterField(
            model_name='notification',
            name='level',
            field=models.CharField(choices=[('success', 'success'), ('info', 'info'), ('error', 'error')], default='info', max_length=20, verbose_name='Tipo'),
        ),
        migrations.AlterField(
            model_name='notification',
            name='object_id_actor',
            field=models.PositiveBigIntegerField(verbose_name='Actor'),
        ),
        migrations.AlterField(
            model_name='notification',
            name='public_notification',
            field=models.BooleanField(default=True, verbose_name='Pública'),
        ),
        migrations.AlterField(
            model_name='notification',
            name='read',
            field=models.BooleanField(default=False, verbose_name='Leída'),
        ),
        migrations.AlterField(
            model_name='notification',
            name='receiver',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='notificaciones', to=settings.AUTH_USER_MODEL, verbose_name='Receptor'),
        ),
        migrations.AlterField(
            model_name='notification',
            name='timestamp',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Fecha y Hora'),
        ),
        migrations.AlterField(
            model_name='notification',
            name='verb',
            field=models.CharField(max_length=220, verbose_name='Mensaje'),
        ),
    ]