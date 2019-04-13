# -*- coding:utf-8 -*-
#@Auhor : Agam
#@Time  : 2019-01-20
#@Email : agamgn@163.com

from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator


class LoginRequiredMixin(object):
    @method_decorator(login_required(login_url='/login/'))
    def dispatch(self,request,*args,**kwargs):
        return super(LoginRequiredMixin,self).dispatch(request,*args,**kwargs)