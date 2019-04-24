from django.db.models import Q
from django.http import JsonResponse
from rest_framework.filters import SearchFilter, OrderingFilter
from rest_framework.generics import ListAPIView, CreateAPIView, RetrieveUpdateDestroyAPIView, RetrieveAPIView
from rest_framework.permissions import IsAuthenticated, IsAuthenticatedOrReadOnly

from diarys.api.pagination import ArticlePageNumberPagination
from diarys.api.permissions import IsSuperUser, IsAuthor
from diarys.api.serializers import ArticleListSerializer, ArticleCreateSerializer, ArticleUpdateSerializer, \
    ArticleDetailSerializer
from diarys.models import Diary


class ArticleListAPIView(ListAPIView):
    queryset =Diary.objects.all()
    serializer_class = ArticleListSerializer

    filter_backends = [SearchFilter, OrderingFilter]  # OrderingFilter排序 ordering=key
    search_fields = ['title', 'content', 'add_times']  # 可搜索的字段 search=value
    pagination_class = ArticlePageNumberPagination
    permission_classes = [IsAuthenticated]

    def get_queryset(self):  # 不重写默认是返回 self.queryset
        queryset = Diary.objects.all()
        query = self.request.GET.get('q')
        if query:
            queryset = queryset.filter(  # i 忽略大小写
                Q(title__icontains=query) |
                Q(content__icontains=query) |
                Q(author__username__icontains=query)
            )

        return queryset



class ArticleCreateAPIView(CreateAPIView):


    serializer_class = ArticleCreateSerializer
    permission_classes = [IsSuperUser]  # 超级用户才能创建文章

    def perform_create(self, serializer):

        serializer.save(author=self.request.user)



class ArticleUpdateAPIView(RetrieveUpdateDestroyAPIView):


    serializer_class = ArticleUpdateSerializer
    permission_classes = [IsAuthor]




class ArticleDetailAPIView(RetrieveAPIView):
    """ 游记详情APi """

    queryset = Diary.objects.all()
    serializer_class = ArticleDetailSerializer
    permission_classes = [IsAuthenticatedOrReadOnly]
