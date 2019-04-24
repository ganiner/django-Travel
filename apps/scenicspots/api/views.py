from django.db.models import Q

from rest_framework.filters import SearchFilter, OrderingFilter
from rest_framework.generics import ListAPIView, CreateAPIView, RetrieveUpdateDestroyAPIView, RetrieveAPIView
from rest_framework.permissions import IsAuthenticated, IsAuthenticatedOrReadOnly

from scenicspots.api.pagination import ArticlePageNumberPagination
from scenicspots.api.serializers import ArticleListSerializer, TukuListSerializer, huodongListSerializer
from scenicspots.models import Spots, Gallery, Active




class TukuListAPIView(ListAPIView):
    """ 所有景点图片列表Api """
    queryset =Gallery.objects.all()
    serializer_class = TukuListSerializer

    filter_backends = [SearchFilter, OrderingFilter]  # OrderingFilter排序 ordering=key
    search_fields = ['spots', 'title', 'image','add_time']  # 可搜索的字段 search=value
    pagination_class = ArticlePageNumberPagination
    permission_classes = [IsAuthenticated]


    def get_queryset(self):  # 不重写默认是返回 self.queryset
        queryset = Gallery.objects.all()
        query = self.request.GET.get('q')
        if query:
            queryset = queryset.filter(  # i 忽略大小写
                Q(title__icontains=query) |
                Q(content__icontains=query) |
                Q(author__username__icontains=query)
            )

        return queryset






class ArticleListAPIView(ListAPIView):
    """ 所有景点列表Api """
    queryset =Spots.objects.all()
    serializer_class = ArticleListSerializer
    filter_backends = [SearchFilter, OrderingFilter]  # OrderingFilter排序 ordering=key
    search_fields = ['name', 'content', 'image','classification','picture',"phone","businessHours","address","price",
                     "x","y","add_time"]  # 可搜索的字段 search=value
    pagination_class = ArticlePageNumberPagination
    permission_classes = [IsAuthenticated]

    class Meta:
        model=TukuListAPIView(many=True)
    def get_queryset(self):  # 不重写默认是返回 self.queryset
        queryset = Spots.objects.all()
        query = self.request.GET.get('q')
        if query:
            queryset = queryset.filter(  # i 忽略大小写
                Q(title__icontains=query) |
                Q(content__icontains=query) |
                Q(author__username__icontains=query)
            )

        return queryset






class huodongListAPIView(ListAPIView):
    """ 所有景点列表Api """
    queryset =Active.objects.all()
    serializer_class = huodongListSerializer

    filter_backends = [SearchFilter, OrderingFilter]  # OrderingFilter排序 ordering=key
    search_fields = ['title', 'introduce', 'image','classification','phone',"go_time","address","price","now_num",
                     "all_num","add_time"]  # 可搜索的字段 search=value
    pagination_class = ArticlePageNumberPagination
    permission_classes = [IsAuthenticated]


    def get_queryset(self):  # 不重写默认是返回 self.queryset
        queryset = Active.objects.all()
        query = self.request.GET.get('q')
        if query:
            queryset = queryset.filter(  # i 忽略大小写
                Q(title__icontains=query) |
                Q(content__icontains=query) |
                Q(author__username__icontains=query)
            )

        return queryset
