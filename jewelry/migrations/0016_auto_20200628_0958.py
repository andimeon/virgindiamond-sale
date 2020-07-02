# Generated by Django 3.0.7 on 2020-06-28 00:58

from django.db import migrations, models
import jewelry.models


class Migration(migrations.Migration):

    dependencies = [
        ('jewelry', '0015_auto_20200628_0955'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='picture',
            field=models.ImageField(blank=True, default='/media/default.png', null=True, upload_to=jewelry.models.product_img_path, verbose_name='Picture'),
        ),
    ]
