# -*- coding: utf-8 -*-

from django.contrib.syndication.views import Feed
from taysistunto.models import Action
from taysistunto.subscription_models import ActionSubscription
from django.shortcuts import render_to_response, get_object_or_404, redirect

import re

from django.template import loader, Context

class ActionFeed(Feed):
    link = '/'
    title = ''
    
    def title(self, obj):
        return obj

    def description(self, obj):
        return "Uusimmat puheenvuorot eduskunnan täysistunnoissa"

    def get_object(self, request):
      
        a = ActionSubscription()
      
        if 'puhuja' in request.GET:
            a.speaker_id = request.GET['puhuja']
        
        if 'ryhma' in request.GET:
            a.speaker_group = request.GET['ryhma']

        if 'avainsanat' in request.GET:
            a.keywords = request.GET['avainsanat']
        return a

    def items(self, obj):
        return obj.filtered_actions()[:20]
        
    def item_title(self, action):
        return u"%s: puheenvuoro aiheeseen %s (%s)" % (action.speaker, action.subject.subject, action.doc.local_date())

    def item_description(self, action):
        return action.text

    def item_link(self, action):
        return action.url()
