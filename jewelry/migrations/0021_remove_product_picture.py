# Generated by Django 3.0.7 on 2020-06-28 02:16

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('jewelry', '0020_auto_20200628_1115'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='product',
            name='picture',
        ),
    ]
