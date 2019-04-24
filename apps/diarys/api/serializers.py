
from rest_framework.serializers import ModelSerializer

from diarys.models import Diary


class ArticleListSerializer(ModelSerializer):

    class Meta:
        model = Diary
        fields ='__all__'


class ArticleCreateSerializer(ModelSerializer):


    class Meta:
        model = Diary
        fields = "__all__"


class ArticleUpdateSerializer(ModelSerializer):

    class Meta:
        model = Diary
        fields = "__all__"



class ArticleDetailSerializer(ModelSerializer):


    class Meta:
        model = Diary
        fields = "__all__"
        read_only_fields = ['views']

