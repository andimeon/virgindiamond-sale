from django.shortcuts import render
from django.shortcuts import get_object_or_404
from jewelry.models import Type, Product
from more_itertools import chunked


def index(request):
    types = Type.objects.all()
    types_row = list(chunked(types, 2))
    return render(request, 'index.html', {'types_row': types_row})


def products_of_type(request, slug):
    type = get_object_or_404(Type, slug=slug)
    products = type.products.filter(exist=True)
    return render(request, 'type.html', {'type': type, 'products': products, })


def product(request, product_num):
    product = get_object_or_404(Product, product_num=product_num)
    return render(request, 'product.html', {'product': product})


def image(request, product_num):
    product = get_object_or_404(Product, product_num=product_num)
    return render(request, 'image.html', {'product': product})
