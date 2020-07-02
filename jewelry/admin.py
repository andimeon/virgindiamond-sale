from django.contrib import admin
from .models import Type, Product


class ProductAdmin(admin.ModelAdmin):
    list_display = ['product_num', 'type', 'exist']
    list_editable = ['exist']
    list_filter = ['type', 'exist']
    raw_id_fields = ['type', 'sold_by']


admin.site.register(Type)
admin.site.register(Product, ProductAdmin)
