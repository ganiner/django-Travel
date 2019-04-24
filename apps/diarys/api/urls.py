from django.urls import path


from diarys.api.views import ArticleListAPIView, ArticleCreateAPIView, ArticleDetailAPIView, ArticleUpdateAPIView




urlpatterns = [
    path("youjiall/",ArticleListAPIView.as_view()),
    path("createyouji/",ArticleCreateAPIView.as_view()),
    path("updateyouji/",ArticleUpdateAPIView.as_view()),
    path("yjxq/",ArticleDetailAPIView.as_view()),

]
