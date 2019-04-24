from django.db.models import Q
from rest_framework.filters import SearchFilter, OrderingFilter
from rest_framework.generics import ListAPIView
from rest_framework.permissions import IsAuthenticated

from news.api.pagination import ArticlePageNumberPagination
from news.api.serializers import ArticleListSerializer
from news.models import News


class ArticleListAPIView(ListAPIView):

    queryset =News.objects.all()
    serializer_class = ArticleListSerializer

    filter_backends = [SearchFilter, OrderingFilter]  # OrderingFilter排序 ordering=key
    search_fields = ['title', 'content', 'image','classification','add_times']  # 可搜索的字段 search=value
    pagination_class = ArticlePageNumberPagination
    permission_classes = [IsAuthenticated]

    def get_queryset(self):  # 不重写默认是返回 self.queryset
        queryset = News.objects.all()
        query = self.request.GET.get('q')
        if query:
            queryset = queryset.filter(  # i 忽略大小写
                Q(title__icontains=query) |
                Q(content__icontains=query) |
                Q(author__username__icontains=query)
            )

        return queryset

