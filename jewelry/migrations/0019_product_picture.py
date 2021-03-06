# Generated by Django 3.0.7 on 2020-06-28 02:14

from django.db import migrations, models
import jewelry.models


class Migration(migrations.Migration):

    dependencies = [
        ('jewelry', '0018_remove_product_picture'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='picture',
            field=models.ImageField(default='/media/default.png', upload_to=jewelry.models.product_img_path, verbose_name='Picture'),
        ),
    ]
