from django.contrib.auth import get_user_model

from rest_framework import serializers

from rest_framework.validators import UniqueValidator

from users.models import MyUser

User = get_user_model()


class UserDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('nickname', 'gender', 'birthday', 'city_addr', 'signature','portrait','integral','check_time')


class UserRegSerializer(serializers.ModelSerializer):
    username = serializers.CharField(required=True, allow_blank=False, label='用户名',
                                     validators=[UniqueValidator(queryset=MyUser.objects.all(),
                                                                 message='用户已存在')])
    password = serializers.CharField(style={'input_type': 'password'}, label="密码", write_only=True)

    def create(self, validated_data):
        user = super(UserRegSerializer, self).create(validated_data=validated_data)
        user.set_password(validated_data['password'])
        user.save()
        return user

    def validate(self, attrs):
        attrs['mobile'] = attrs['username']
        return attrs

    class Meta:
        model = User
        fields = ('username', 'email', 'password')








