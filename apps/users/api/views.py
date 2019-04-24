from django.contrib.auth.backends import ModelBackend
from django.db.models import Q

from rest_framework import mixins, viewsets, permissions, status, authentication
from rest_framework.generics import ListAPIView

from rest_framework.mixins import CreateModelMixin

from rest_framework.response import Response


from rest_framework_jwt.authentication import JSONWebTokenAuthentication
from rest_framework_jwt.serializers import jwt_payload_handler, jwt_encode_handler

from users.api.serializers import UserRegSerializer, UserDetailSerializer
from users.models import MyUser

# 自定义用户认证类
class CustomBackend(ModelBackend):
    # 重写这个函数
    def authenticate(self, username=None, password=None, **kwargs):
        try:
            user = MyUser.objects.get(Q(username=username) | Q(email=username))
            if user.check_password(password):  # 加密比对密码是否相等
                return user
        except Exception as e:
            return None



class UserViewset(CreateModelMixin, mixins.UpdateModelMixin, mixins.RetrieveModelMixin, viewsets.GenericViewSet):

    """用户注册"""
    serializer_class = UserRegSerializer
    queryset = MyUser.objects.all()
    authentication_classes = (JSONWebTokenAuthentication, authentication.SessionAuthentication, )

    def get_serializer_class(self):
        if self.action == 'retrieve':  # 只有viewset才有这个action
            return UserDetailSerializer
        elif self.action == 'create':
            return UserRegSerializer
        return UserDetailSerializer

    # permission, 在用户访问这个viewset里的所有方法，都必须要登陆
    # permission_classes = (permissions.IsAuthenticated, )
    def get_permissions(self):
        # 根据行为动态设置permission
        if self.action == 'retrieve':  # 只有viewset才有这个action
            return [permissions.IsAuthenticated()]
        elif self.action == 'create':
            return []
        return []

    # 重载CreateModelMixin里的 create方法
    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)

        user = self.perform_create(serializer)
        payload = jwt_payload_handler(user)

        re_dict = serializer.data  # 定制化返回的数据
        re_dict['token'] = jwt_encode_handler(payload)
        re_dict['name'] = user.name if user.name else user.username

        headers = self.get_success_headers(serializer.data)
        return Response(re_dict, status=status.HTTP_201_CREATED, headers=headers)


    def get_object(self):  # users/id --> users/乱填 都会return 当期的user
        return self.request.user

    # 重载这个函数，返回一个user 对象
    def perform_create(self, serializer):
        # serializer.save()
        return serializer.save()