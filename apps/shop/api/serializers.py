from rest_framework.serializers import ModelSerializer

from shop.models import Product


class ArticleListSerializer(ModelSerializer):

    class Meta:
        model = Product
        fields ='__all__'



