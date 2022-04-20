# Generated by Django 4.0.1 on 2022-04-20 11:22

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Pais',
            fields=[
                ('idpais', models.CharField(max_length=3, primary_key=True, serialize=False, verbose_name='Código')),
                ('nompais', models.CharField(max_length=30)),
            ],
            options={
                'verbose_name': 'País',
                'verbose_name_plural': 'Países',
                'db_table': 'pais',
                'managed': True,
            },
        ),
    ]
