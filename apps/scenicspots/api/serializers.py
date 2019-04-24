from rest_framework.serializers import ModelSerializer

from scenicspots.models import Spots, Gallery, Active


class ArticleListSerializer(ModelSerializer):

    class Meta:
        model = Spots
        fields ='__all__'


class huodongListSerializer(ModelSerializer):

    class Meta:
        model = Active
        fields ='__all__'



class TukuListSerializer(ModelSerializer):


    class Meta:
        model = Gallery
        fields = '__all__'

