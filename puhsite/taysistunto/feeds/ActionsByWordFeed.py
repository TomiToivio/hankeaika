# -*- coding: utf-8 -*-

from django.contrib.syndication.views import Feed
from taysistunto.models import Word
from django.shortcuts import render_to_response, get_object_or_404, redirect

from django.template import loader, Context

class ActionsByWordFeed(Feed):
    link = "/"
    speaker_id = None
    
    def title(self, obj):
        return "puheenvuorot: '" + obj.word + "'"

    def description(self, obj):
        return "Uusimmat puheenvuorot eduskunnan täysistunnoissa hakusanalla '" + obj.word + "'"

    def get_object(self, request, word):
        self.speaker_id = request.GET.get('puhuja', None)
        return get_object_or_404(Word, word=word)

    def items(self, obj):
        return obj.latest_occurrences(speaker_id=self.speaker_id)[:100]

    def item_title(self, item):
        return u"%s: puheenvuoro aiheeseen %s" % (item.action.speaker, item.action.subject.subject)

    def item_description(self, item):
        return item.action.text

    def item_link(self, item):
        return item.action.url()
