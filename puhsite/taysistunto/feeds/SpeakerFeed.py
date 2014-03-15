# -*- coding: utf-8 -*-

from django.contrib.syndication.views import Feed
from taysistunto.models import Speaker
from django.shortcuts import render_to_response, get_object_or_404, redirect

from django.template import loader, Context

class SpeakerFeed(Feed):
    link = "/puhujat/"
    
    def title(self, obj):
        return "%s: puheenvuorot" % obj

    def description(self, obj):
        return u"Puhujan %s uusimmat puheenvuorot eduskunnan täysistunnoissa" % obj

    def get_object(self, request, id):
        return get_object_or_404(Speaker, pk=id)

    def items(self, obj):
        return obj.actions.all().order_by('-date','-abs_pos')[:10]

    def item_title(self, item):
        return "[%s] Puheenvuoro aiheeseen: %s" % (item.doc.orig_id(), item.subject.subject)

    def item_description(self, item):
        return item.text
