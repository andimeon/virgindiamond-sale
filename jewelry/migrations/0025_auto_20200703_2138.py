# Generated by Django 3.0.7 on 2020-07-03 12:38
import json

from django.db import migrations


def fill_image_path(apps, schema_editor):
    Product = apps.get_model('jewelry', 'Product')
    
    with open('json/necklace_img.json') as json_file:
        json_data = json.load(json_file)
    
    for key in json_data:
        try:
            product = Product.objects.get(product_num=int(key))
            product.image = json_data[key]
            product.save()
        except Exception:
            print('No product ', key)


class Migration(migrations.Migration):
    dependencies = [
        ('jewelry', '0024_type_title_eng'),
    ]
    
    operations = [
        migrations.RunPython(fill_image_path)
    ]