from django.urls import path

from news.api.views import ArticleListAPIView




urlpatterns = [

    path("newlist/",ArticleListAPIView.as_view()),


]
