from django.conf.urls import patterns, include, url

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()
from taysistunto.feeds import SpeakerFeed, DocumentFeed, ActionFeed, ActionsByWordFeed

urlpatterns = patterns('',
    # Examples:
    url(r'^$', 'taysistunto.views.index'),
    url(r'^(?P<page>\d+)$', 'taysistunto.views.index'),
    url(r'^stopify/(?P<word>.*)$', 'taysistunto.views.stopify'),
    url(r'^document$', 'taysistunto.views.document'),
    url(r'^puhujat/(?P<id>\d+)(-[\-\w]*)?$', 'taysistunto.views.speaker'),

#    url(r'^puhujat/(?P<id>\d+)(-[\-\w]*)?/puheenvuorot$', 'taysistunto.views.latest_speaker_actions'),
#    url(r'^puhujat/(?P<id>\d+)(-[\-\w]*)?/puheenvuorot/(?P<page>\d+)$', 'taysistunto.views.latest_speaker_actions'),


#    url(r'^puhujat/(?P<id>\d+)(-[\-\w]*)?/puheenvuorot/vuosi-(?P<year>\d{4})$', 'taysistunto.views.latest_speaker_actions'),
#    url(r'^puhujat/(?P<id>\d+)(-[\-\w]*)?/puheenvuorot/vuosi-(?P<year>\d{4})/(?P<page>\d+)$', 'taysistunto.views.latest_speaker_actions'),

    url(r'^puhujat/(?P<id>\d+)(-[\-\w]*)?/syote$', SpeakerFeed.SpeakerFeed()),

    url(r'^puhujat$', 'taysistunto.views.all_speakers'),

    url(r'^puheenvuorot$', 'taysistunto.views.action_search'),

    url(r'^istunnot/(?P<id>[\d\-]+)$', 'taysistunto.views.document'),
    url(r'^istunnot/(?P<doc_id>[\d\-]+)/(?P<subject_id>\d+)(-[\-\w]*)?$', 'taysistunto.views.subject'),
    url(r'^istunnot/(?P<doc_id>[\d\-]+)/(?P<subject_id>\d+)(-[\-\w]*)?/(?P<action_id>\d+)$', 'taysistunto.views.action'),

    url(r'^sanat/?$', 'taysistunto.views.words'),

    url(r'^sanat/(?P<word>[^/]+)$', 'taysistunto.views.word'),
    url(r'^sanat/(?P<word>[^/]+)/vuosi-(?P<year>\d{4})$', 'taysistunto.views.word'),
    url(r'^sanat/(?P<word>[^/]+)/syote$', ActionsByWordFeed.ActionsByWordFeed()),
    url(r'^puheenvuorot/syote$', ActionFeed.ActionFeed()),

    url(r'^arkisto$', 'taysistunto.views.archive'),
    url(r'^arkisto/(?P<chosen_year>\d+)$', 'taysistunto.views.archive'),

    url(r'^(?P<tpl>(info))$', 'taysistunto.views.static_content'),

    url(r'^istunnot/syote$', DocumentFeed.DocumentFeed()),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^puh-admin/', include(admin.site.urls)),
    url(r'^tilaukset/(?P<email>.{5,100})-(?P<checksum>\w{16})$', 'taysistunto.views.manage_subscriptions'),
    url(r'^tilaukset/(?P<email>.{5,100})-(?P<checksum>\w{16})/istunnot/lopeta$', 'taysistunto.views.end_subscription'),
    url(r'^tilaukset/(?P<email>.{5,100})-(?P<checksum>\w{16})/puheenvuorot/(?P<id>\d+)/lopeta$', 'taysistunto.views.end_subscription'),
    url(r'^test-action-mail/(?P<action_id>\d+)$', 'taysistunto.views.test_action_mail'),
    url(r'^test-document-mail$', 'taysistunto.views.test_document_mail'),

    url(r'^tilaa$', 'taysistunto.views.subscribe'),

)
