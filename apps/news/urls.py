# -*- coding:utf-8 -*-
#@Auhor : Agam
#@Time  : 2019-01-25
#@Email : agamgn@163.com

from django.urls import path, re_path,include
from .views import *

urlpatterns = [
    path('all/', NewsView.as_view(), name='all'),
    path('detail/<int:news_id>/', NewsDetails.as_view(), name='news_detail'),
]