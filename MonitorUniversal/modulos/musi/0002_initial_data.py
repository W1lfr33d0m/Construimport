from __future__ import unicode_literals

from django.db import migrations, transaction

from modulos.utiles import regiones


def load_data(apps, schema_editor):
    with transaction.atomic():
        regiones.init_data(apps, schema_editor)


class Migration(migrations.Migration):

    dependencies = [
        ('nomencladores', '0001_initial'),
    ]

    operations = [
        migrations.RunPython(load_data),
    ]
