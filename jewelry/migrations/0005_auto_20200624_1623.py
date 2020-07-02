# Generated by Django 3.0.6 on 2020-06-24 07:23
import json

from django.db import migrations


def fill_data_from_json(apps, schema_editor):
    Type = apps.get_model('jewelry', 'Type')
    Product = apps.get_model('jewelry', 'Product')
    type = Type.objects.get(title='Necklace')
    
    with open('json/necklace.json') as json_file:
        json_data = json.load(json_file)
    
    for data in json_data:
        product = json_data[data]
        
        Product.objects.get_or_create(
            product_num=product['product_num'],
            description=product['description'],
            standart=product['standart'],
            price=product['price'],
            price_IJT=product['price_IJT'],
            price_net=product['price_net'],
            quantity=product['quantity'],
            exist=True,
            type=type
        )


class Migration(migrations.Migration):
    dependencies = [
        ('jewelry', '0004_auto_20200624_1606'),
    ]
    
    operations = [
        migrations.RunPython(fill_data_from_json)
    ]
