from django.urls import path

from scenicspots.api.views import ArticleListAPIView, TukuListAPIView, huodongListAPIView




urlpatterns = [

    path("alljd/",ArticleListAPIView.as_view()),
    path("tupianjd/",TukuListAPIView.as_view()),
    path("activejd/",huodongListAPIView.as_view()),


]
