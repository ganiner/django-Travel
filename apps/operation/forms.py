# -*- coding:utf-8 -*-
#@Auhor : Agam
#@Time  : 2019-01-19
#@Email : agamgn@163.com

from django import forms

from .models import *


class CommentsForm(forms.Form):
    comment = forms.CharField(required=True)

