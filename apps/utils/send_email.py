# -*- coding:utf-8 -*-
#@Auhor : Agam
#@Time  : 2019-01-19
#@Email : agamgn@163.com

from random import Random
from django.core.mail import send_mail

from users.models import EmailVerifyRecord
from treval.settings import EMAIL_FROM
from treval.settings import DOMAIN_NAME

def random_str(randomlength=10):
    ranstr = ''
    chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789'
    length = len(chars) - 1
    random = Random()
    for i in range(randomlength):
        ranstr += chars[random.randint(0, length)]
    return ranstr


def send_register_email(email, send_type='register'):
    email_record = EmailVerifyRecord()
    ran_str = random_str(20)
    email_record.email = email
    email_record.code = ran_str
    email_record.send_type = send_type
    email_record.save()

    if send_type == 'register':
        email_title = 'Travel 注册激活'
        email_body = '你好!\n' \
                     '感谢你注册 Travel。 \n' \
                     '你的登录邮箱为：{0}。\n' \
                     '请点击下面的链接激活你的账号: \n' \
                     + DOMAIN_NAME + 'active/{1}'.format(email, ran_str)
        send_mail(email_title, email_body, EMAIL_FROM, [email])

    elif send_type == 'find':
        email_title = 'Travel 找回密码'
        email_body = '你好!\n' \
                     '你找回密码的邮箱为：{0}。\n' \
                     '请点击下面的链接找回你的密码: \n' \
                     + DOMAIN_NAME + 'find/{1}'.format(email, ran_str)
        send_mail(email_title, email_body, EMAIL_FROM, [email])
