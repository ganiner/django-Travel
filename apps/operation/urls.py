# -*- coding:utf-8 -*-
#@Auhor : Agam
#@Time  : 2019-01-19
#@Email : agamgn@163.com

from django.urls import path, re_path,include
from .views import *

urlpatterns = [
    # 点赞
    path('fav/', FavView.as_view(), name='fav'),
    # 收藏
    path('collect/', CollView.as_view(), name='collect'),
    # 评论
    path('comments/', CommentsView.as_view(), name='comments'),
    # 购物车
    path('shopcar/', ShopcarView.as_view(), name='shopcar'),
    # 购物车操作
    path('shopcaroperation/', ShopcarOperationView.as_view(), name='shopcaroperation'),
    # 购买商品
    path('shoping/', ShopingView.as_view(), name='shoping'),
    # 确认订单
    path('confirm/', ConfirmView.as_view(), name='confirm'),
    # 确认收货
    path('confirmGoods/', ConfirmGoodsView.as_view(), name='confirmgoods'),
    # 商品评论
    path('commentsGoods', CommentsGoodsView.as_view(), name='commentsgoods'),
    # 购买产品
    path('travelbuy', TravelBuyView.as_view(), name='travelbuy'),
    # 景点评论
    path('commentSpots', CommentsSpotsView.as_view(), name='commentspots'),
    # 搜索
    path('search', SearchView.as_view(), name='search'),

]