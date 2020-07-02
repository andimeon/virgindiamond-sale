# Generated by Django 3.0.7 on 2020-06-28 02:07

from django.db import migrations, models
import jewelry.models


class Migration(migrations.Migration):

    dependencies = [
        ('jewelry', '0016_auto_20200628_0958'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='picture',
            field=models.ImageField(default='/media/default.png', upload_to=jewelry.models.product_img_path, verbose_name='Picture'),
        ),
    ]
