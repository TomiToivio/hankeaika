# -*- coding: utf-8 -*-

from django.contrib.syndication.views import Feed
from taysistunto.models import Document

from django.template import loader, Context

item_descr_template = loader.get_template('taysistunto/istunto-feediin.html')

class DocumentFeed(Feed):
    title = u"Viimeiset täysistunnot"
    link = "/"
    description = "Lista eduskunnan uusimmista täysistunnoista puheenvuoroineen"

    def items(self):
        return Document.objects.order_by('-date')[:10]

    def item_title(self, item):
        return item.orig_title()

    def item_description(self, item):
        return item_descr_template.render(Context({'doc': item}))
