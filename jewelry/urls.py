from . import views
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('', views.index, name='index'),
    path('types/<slug:slug>', views.products_of_type, name='types_slug'),
    path('product/<int:product_num>', views.product, name='product'),
    path('image/<int:product_num>', views.image, name='image')
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)