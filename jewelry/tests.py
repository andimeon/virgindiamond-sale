from django.test import TestCase
from django.urls import reverse, resolve
from .views import index, types_product
from jewelry.models import Type


class IndexTests(TestCase):
    def test_index_view_status_code(self):
        url = reverse('index')
        response = self.client.get(url)
        self.assertEquals(response.status_code, 200)
    
    def test_index_url_resolve_index_view(self):
        view = resolve('/')
        self.assertEquals(view.func, index)

# class TypeProductTests(TestCase):
# def setUp(self):
#     Type.objects.create(title='Fake')

# def test_type_products_view_success_status_code(self):
#     url = reverse('types_slug', kwargs={'slug': 'fake'})
#     response = self.client.get(url)
#     self.assertEquals(response.status_code, 200)
#
# def test_type_products_view_not_found_status_code(self):
#     url = reverse('types_slug', kwargs={'slug': 'unknown-slug'})
#     response = self.client.get(url)
#     self.assertEquals(response.status_code, 404)
#
# def test_types_url_resolves_types_view(self):
#     resolver = resolve('/types/fake')
#     self.assertEquals(resolver.func, types_product)
