# -*- coding: utf-8 -*-

from django.db import models
import re
import string
import unicodedata
from django.core import validators
from taysistunto.models import Document, Speaker, Action, Word

from django.core.mail import EmailMultiAlternatives
from django.template.loader import get_template
from django.template import Context

from django.conf import settings

import datetime
import json

class SubscriptionHelper:
    # staattinen metodi tarkistussumman laskemiseksi halutusta email-osoitteesta

    @staticmethod
    def get_checksum(email):
        import hashlib;
        return hashlib.sha224(settings.SECRET_KEY + email).hexdigest()[10:26]

    @staticmethod
    def manage_url(email):
        return "/tilaukset/%s-%s" % (email, SubscriptionHelper.get_checksum(email))

    @staticmethod
    def send_mail(subj, to_addr, text, html):
      
        from_addr = 'Puheenvuorot <noreply@kansanmuisti.fi>'
        
        dbg = u"Sending '%s' to '%s'" % (subj, to_addr)
        print dbg.encode('utf-8')
        # to_addr = 'tuomas.salo@uta.fi' # TMP!

        msg = EmailMultiAlternatives(subj, text, from_addr, [to_addr]);
        msg.attach_alternative(html, "text/html")
        try:
            msg.send()
        except:
            print u"failed to send to '%s', ignoring." % to_addr

class DocumentSubscription(models.Model):


    id = models.IntegerField(primary_key=True)
    email = models.CharField(
        max_length=64,
        validators=[validators.validate_email],
    )
    latest_send_date = models.DateField()

    def __unicode__(self):
        return u"Uusimmat täysistunnot"

    def get_mail_body(self, doc):
        c = Context({
            'doc': doc,
            'sub': self,
            'manage_url': SubscriptionHelper.manage_url(self.email),
        })
        return get_template('taysistunto/email/document.html').render(c)


    def send_mail(self, doc):
      
        SubscriptionHelper.send_mail(
            subj = doc.orig_title(),
            to_addr = self.email,
            text = u"%s\n\nLue lisää: http://puheenvuorot.kansanmuisti.fi%s" % (doc.orig_title(), doc.url()),
            html = self.get_mail_body(doc)
        )

    # send any unsent mail
    def catch_up(self):
        docs = []
        # preload to a list to enable [-1] checking below
        for d in Document.objects.filter(date__gt=self.latest_send_date).order_by('date'):
            docs.append(d)

        prev_date = datetime.date(year=1970, month=1, day=1)
        for d in docs:
            
            self.send_mail(d)

            if d.date > prev_date or d==docs[-1]:
                self.latest_send_date = d.date
                self.save()
                prev_date = d.date

    def unsubscribe_url(self):
        return "%s/istunnot/lopeta" % SubscriptionHelper.manage_url(self.email)

    class Meta:
        db_table = u'document_subscription'
        ordering = ['id']



class ActionSubscription(models.Model):

    id = models.IntegerField(primary_key=True)
    email = models.CharField(
        max_length=64,
        validators=[validators.validate_email],
    )
#    speaker_id = models.IntegerField()
    speaker_group = models.CharField(max_length=16)
    keywords = models.TextField()

    speaker = models.ForeignKey(Speaker, related_name='subscriptions')
    
    latest_action_id = models.IntegerField()

    class Meta:
        db_table = u'action_subscription'
        ordering = ['id']

    def __unicode__(self):
        if self.speaker_group:
            return u"Puheenvuorot (%s)" % self.speaker_group

        if self.speaker_id:
            return u'Puheenvuorot: %s' % self.speaker

        if self.keywords:
            return u'Puheenvuorot, joissa esiintyy jokin sanoista: %s' % self.keywords

        # tarvitaanko
        return u"Kaikki puheenvuorot"

    def get_mail_body(self, action):
        c = Context({
            'action': action,
            'sub': self,
            'manage_url': SubscriptionHelper.manage_url(self.email),
        })
        return get_template('taysistunto/email/action.html').render(c)


    def send_mail(self, action):

        SubscriptionHelper.send_mail(
            subj = u"Puheenvuoro: %s, aiheesta %s" % (action.speaker, action.subject.subject),
            to_addr = self.email,
            text = u"Puheenvuoro: %s, aiheesta %s\n\nLue lisää: http://puheenvuorot.kansanmuisti.fi%s" % (
                action.speaker, action.subject.subject, action.url()
            ),
            html = self.get_mail_body(action),
        )

    def feed_url(self):
      
      params = {}
        
      if self.speaker_id:
          params['puhuja'] = self.speaker_id

      if self.speaker_group:
          params['ryhma'] = self.speaker_group          
      if self.keywords:
          
          words = []
          for w in re.split(r',\s*', self.keywords):
              words.append(w.lower())
          
          params['avainsanat'] = ', '.join(words)
      
      url =  '/puheenvuorot/syote'   
      
      if len(params):
          from urllib import urlencode
          url += '?' + urlencode(params)
          
      return url

    def filtered_actions(self):
        
        actions = Action.objects
              
        if self.latest_action_id:
            actions = actions.filter(id__gt=self.latest_action_id).order_by('date', 'abs_pos', 'id')
        else:
            actions = actions.order_by('-date', '-abs_pos', '-id')
            
        if self.speaker_id:
            actions = actions.filter(speaker_id=self.speaker_id)

        if self.speaker_group:
            actions = actions.filter(speaker_group=self.speaker_group)
            
        if self.keywords:
            
            word_ids = []
            for w in re.split(r',\s*', self.keywords):
                words = Word.objects.filter(word=w)
                if len(words)==1:
                    word_ids.append(words[0].id)
            
            #if len(word_ids) == 0:
            #    return []
            
            actions = actions.filter(occurrences__word_id__in=word_ids)
        
        return actions

    

    # send any unsent mail
    def catch_up(self):

        for a in self.filtered_actions():
            
            self.send_mail(a)

            # päivitetään joka välissä, jos vaikka homma keskeytyy jotenkin
            self.latest_action_id = a.id
            self.save()

    def unsubscribe_url(self):
        return "%s/puheenvuorot/%d/lopeta" % (SubscriptionHelper.manage_url(self.email), self.id)

