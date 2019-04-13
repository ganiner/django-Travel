# -*- coding:utf-8 -*-
#@Auhor : Agam
#@Time  : 2019-01-19
#@Email : agamgn@163.com

import xadmin
from .models import *


class BannerAdmin:
    """
    轮播图后台
    """
    list_display = ['title', 'add_time']
    list_filter = ['title', 'add_time']
    search_fields = ['title', 'add_time']
    fields = ['title', 'image', 'url', 'add_time']
    model_icon = 'fa fa-photo'


xadmin.site.register(Banner, BannerAdmin)
