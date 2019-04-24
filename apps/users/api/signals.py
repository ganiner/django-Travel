# -*- coding: utf-8 -*-

from django.db.models.signals import post_save
from django.dispatch import receiver
from django.contrib.auth import get_user_model

User = get_user_model()


@receiver(post_save, sender=User)
def create_auth_token(sender, instance=None, created=False, **kwargs):
    if created:  # 如果user首次创建 这个会有Ture，否则会为false
        password = instance.password
        instance.set_password(password)  # 将密码加密存储
        instance.save()
        # Token.objects.create(user=instance)  # 用了jwt就不用这个token了