# Generated by Django 3.0.7 on 2020-06-28 04:11

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('jewelry', '0022_product_picture'),
    ]

    operations = [
        migrations.RenameField(
            model_name='product',
            old_name='picture',
            new_name='image',
        ),
    ]
