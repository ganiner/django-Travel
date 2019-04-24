from django.urls import path

from shop.api.views import ArticleListAPIView




urlpatterns = [

    path("allshop/",ArticleListAPIView.as_view()),



]
