from django.db.models import Q

from rest_framework.filters import SearchFilter, OrderingFilter
from rest_framework.generics import ListAPIView
from rest_framework.permissions import IsAuthenticated

from shop.api.pagination import ArticlePageNumberPagination
from shop.api.serializers import ArticleListSerializer
from shop.models import Product


class ArticleListAPIView(ListAPIView):
    queryset =Product.objects.all()
    serializer_class = ArticleListSerializer

    filter_backends = [SearchFilter, OrderingFilter]  # OrderingFilter排序 ordering=key
    search_fields = ['name', 'price', 'num','freight','origin',"pro_type","buyers","comments","details",
                     "mainimg","remind","add_time"]  # 可搜索的字段 search=value
    pagination_class = ArticlePageNumberPagination
    permission_classes = [IsAuthenticated]


    def get_queryset(self):  # 不重写默认是返回 self.queryset
        queryset = Product.objects.all()
        query = self.request.GET.get('q')
        if query:
            queryset = queryset.filter(  # i 忽略大小写
                Q(title__icontains=query) |
                Q(content__icontains=query) |
                Q(author__username__icontains=query)
            )

        return queryset


