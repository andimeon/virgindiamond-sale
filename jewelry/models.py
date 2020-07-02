import os

from django.db import models
from django.contrib.auth.models import User
from django.utils.text import slugify

from imagekit.models import ImageSpecField
from imagekit.processors import ResizeToFill


class Type(models.Model):
    title = models.CharField('Title', max_length=30)
    title_eng = models.CharField('Title eng', max_length=30)
    slug = models.SlugField(unique=True)
    description = models.CharField(max_length=100)
    cover_url = models.CharField(max_length=100, null=True)
    
    def __str__(self):
        return self.title
    
    def save(self, *args, **kwargs):
        self.slug = slugify(self.title_eng)
        super(Type, self).save(*args, **kwargs)


def product_img_path(instance, filename):
    return os.path.join(instance.type.title, filename)


class Product(models.Model):
    product_num = models.IntegerField('Product number')
    description = models.TextField('Description', blank=True)
    standart = models.CharField('Standart', max_length=100, blank=True, null=True)
    price = models.IntegerField('Retail price')
    price_IJT = models.IntegerField('IJT price')
    price_net = models.IntegerField('Net price')
    quantity = models.IntegerField('Quantity')
    image = models.ImageField('Picture', upload_to=product_img_path, default='default.png')
    image_thumbnail = ImageSpecField(source='image', processors=[ResizeToFill(400, 267)],
                                     format='PNG',
                                     options={'quality': 60})
    exist = models.BooleanField('Exist')
    type = models.ForeignKey(Type, related_name='products', on_delete=models.CASCADE)
    sold_by = models.ForeignKey(User, related_name='products', on_delete=models.CASCADE, blank=True, null=True)
    sold_at = models.DateField(blank=True, null=True)