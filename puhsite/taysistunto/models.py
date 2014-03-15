# -*- coding: utf-8 -*-

from django.db import models
import re
import string
import unicodedata

from time import time
import json

from django.db.models import Sum

from django.utils.functional import memoize
_document_details_cache = {}
_document_stats_cache = {}
_speaker_details_cache = {}

def slugify(str):
    return re.sub(u'[\W\-]+', '-', unicodedata.normalize('NFKD', str).encode('ascii','ignore').lower())

class Speaker(models.Model):
    id = models.IntegerField(primary_key=True)
    first_name = models.CharField(max_length=96)
    last_name = models.CharField(max_length=96)
    number = models.IntegerField(null=True, blank=True)
    is_current = models.IntegerField(null=False)
    group = models.CharField(max_length=48, blank=True)
    title = models.CharField(max_length=64, blank=True)
    details_c = models.TextField()

    def words_by_month(self):
        # huom: melkein sama kuin Word-modelissa

        occ = WordOccurrence.objects.filter(speaker_id=self.id).values('month').annotate(Sum('n'))

        if len(occ)==0:
            return []
        # [{'n__sum': 1, 'month': 148L}, {'n__sum': 11, 'month': 149L}, ...

        vals = dict((o['month'], o['n__sum']) for o in occ)
        # {10L: 1, 11L: 4, 13L: 6, 14L: 28, 15L: 4 ...

        # lista numeroista, alkaen nollasta
        return [vals.get(m) for m in range(max(vals.keys())+1)]

    def url(self):
        return self.get_absolute_url()
 
    def photoUrl(self):
        if self.number==0 or self.title:
            return "/static/no-photo.gif"
        else:
            return "/static/edustajakuvat/%d.jpg" % self.number
            # return "http://www.eduskunta.fi/fakta/edustaja/kuvat/%d.jpg" % self.number

    def name(self):
        return self.__unicode__()

    def __unicode__(self):
        if self.group:
            return "%s %s (%s)" % (self.first_name, self.last_name, self.group)
        else:
            return "%s %s" % (self.first_name, self.last_name)

    def get_absolute_url(self):
        return '/puhujat/%d-%s' % (self.id, slugify(self.first_name + ' ' + self.last_name))

    def details(self):
        
        det = json.loads(self.details_c)

        return {
            'top_words': det['top_words'],
            'top_word_years': sorted(det['top_words_by_year'].keys()),
            'top_words_by_year': det['top_words_by_year'],
        }
    details = memoize(details, _speaker_details_cache, 1)

    class Meta:
        db_table = u'speaker'
        ordering = ['last_name','first_name']

class Word(models.Model):
    id = models.IntegerField(primary_key=True)
    known = models.IntegerField() # boolean + null
    word = models.CharField(unique=True, max_length=192)
    stop = models.CharField(
        max_length=21,
        choices=(('Stop','Stop'),('Nonstop','Nonstop',),('Unknown','Unknown'))
    )
    ordering = ['word']
    class Meta:
        db_table = u'word'

    def latest_occurrences(self, speaker_id=None):
        objs = WordOccurrence.objects.filter(word_id=self.id)
#        if year:
#            # konvertoidaan vuosi kuukausivaliksi
#            # 1999 == 0..11
#            # 2000 == 12..23
#            # ...
#            month1 = 12 * (int(year) - 1999)
#            month2 = 12 * (int(year) - 1999 + 1)
#            objs = objs.filter(month__in=range(month1, month2))

        if speaker_id:
            objs = objs.filter(speaker_id=speaker_id)

        return objs.order_by('-action__date','-action__abs_pos')

    def occurrence_by_month(self, speaker_id=None):
        # huom: melkein sama kuin Speaker-modelissa

        objs = WordOccurrence.objects.filter(word_id=self.id)
        if speaker_id:
            objs = objs.filter(speaker_id=speaker_id)

        occ = objs.values('month').annotate(Sum('n'))
        if len(occ)==0:
            return []

        # [{'n__sum': 1, 'month': 148L}, {'n__sum': 11, 'month': 149L}, ...

        vals = dict((o['month'], o['n__sum']) for o in occ)
        # {10L: 1, 11L: 4, 13L: 6, 14L: 28, 15L: 4 ...

        # lista numeroista, alkaen nollasta
        return [vals.get(m) for m in range(max(vals.keys())+1)]

    def url(self):
        return '/sanat/' + self.word

    def __unicode__(self):
        ret = ''
        if self.known==0:
            ret += '[?] '

        ret += self.word + ' [' + self.stop + ']'

        return ret
        # return '[?'] + self.stop + '] ' + unicode(self.word, encoding='utf8')

class WordOccurrence(models.Model):
    word_id = models.IntegerField()
    action_id = models.IntegerField()
    speaker_id = models.IntegerField()
    n = models.IntegerField()
    month = models.IntegerField()
    word = models.ForeignKey(Word, related_name='occurrences')
    action = models.ForeignKey('Action', related_name='occurrences')

    def __unicode__(self):
        return '%s x %d (action=%s)' % (self.word.word, self.n, self.action_id)

    class Meta:
        db_table = u'word_occurrence'

class Document(models.Model):
    id = models.CharField(primary_key=True, max_length=16)
    title = models.CharField(max_length=64)
    link = models.CharField(max_length=64)
    date = models.DateField()
    year = models.IntegerField()
    weight = models.FloatField()
    details_c = models.TextField()
    
    def stats(self):
        det = json.loads(self.details_c)
        return {
            'speaker_count': len(det['speakers']),
            'action_count': det['action_count'],
            'subject_count': int(det['subject_count']),
        }

    def prev(self):
        try:
            return self.get_previous_by_date()
        except:
            return None
    def next(self):
        try:
            return self.get_next_by_date()
        except:
            return None
            
    def details(self):
        det = json.loads(self.details_c)
        speakers = det['speakers']
        speaker_ids = [s['id'] for s in speakers]

        for s in speakers:
            s['speaker'] = Speaker(
                id= int(s['id']),
                number= int(s['number']),
                first_name= s['first_name'],   
                last_name= s['last_name'],   
                group= s['group'],   
            )
        

        if len(speakers)>7:
            top_count = 6
        else:
            top_count = len(speakers)


        return {
            'top_words_sorted_by_weight': det['top_words'],
            'top_words': sorted(det['top_words'], key=lambda w: w[0]),
            'speakers': speakers,
            'action_count': det['action_count'],
            'subject_count': int(det['subject_count']),

            # istuntolistaa varten

            'top6_speakers': speakers[0:top_count],
            'more6_speakers_count': max(len(speakers)-top_count, 0),

            # detaljinakymaa varten

            'top_speakers': speakers[0:top_count],
            'bottom_speakers': speakers[top_count:], # TODO: loput nimen mukaan jarjestykseen
            'more_speakers_count': max(len(speakers)-top_count, 0),
        }

    stats   = memoize(stats, _document_stats_cache, 1)
    details = memoize(details, _document_details_cache, 1)

    def orig_id(self):
        return re.sub(r'-', '/', self.id)

    def orig_title(self):
        return self.title + ' ' + self.orig_id()

    def local_date(self):
        return re.sub(r'(^|\.)0',r'\1', self.date.strftime("%d.%m.%Y"))



    # HUOM: optimointi alla Subject-luokassa.
    def url(self):
        return '/istunnot/' + self.id.lower()
    get_absolute_url = url

    def __unicode__(self):
        return "[%s]" % self.id


    class Meta:
        db_table = u'document'
        ordering = ['-date','-id']

class Subject(models.Model):
    id = models.IntegerField(primary_key=True)
    action_count = models.IntegerField()
    subject = models.TextField()
    doc = models.ForeignKey(Document, related_name='subjects')
#    def url(self):
#        return '%s/%d-%s' % (self.doc.url(), self.id, slugify(self.subject))
# HUOM: optimointi! Ei kutsuta self.doc.url()-funktiota, koska se hakisi aina Document-olion. /istunnot/-urli on siis kahdennetu.
    def url(self):
        return '/istunnot/%s/%d-%s' % (self.doc_id.lower(), self.id, slugify(self.subject))
        
    def __unicode__(self):
        return "[%s] %s" % (self.doc_id, self.subject[0:50])
    class Meta:
        db_table = u'subject'

class Action(models.Model):
    id = models.IntegerField(primary_key=True)
    text = models.TextField()
    lang = models.CharField(max_length=6)
    doc_id = models.CharField(max_length=48)
    
    # puhujan tietoja puhumishetkella (siksi kopio)
    speaker_group = models.CharField(max_length=16)
    speaker_first_name = models.CharField(max_length=32)
    speaker_last_name = models.CharField(max_length=32)
    # tämä vain optimoinnin vuoksi:
    speaker_number = models.IntegerField()
    
    date = models.DateField()
    pos = models.IntegerField()
    abs_pos = models.IntegerField()
    speaker_id = models.IntegerField()
    doc = models.ForeignKey(Document, related_name='actions')
    subject = models.ForeignKey(Subject, related_name='actions')
    speaker = models.ForeignKey(Speaker, related_name='actions')


    # puhujan puhumishetken nimi ja ryhmä (TODO: ja asema)
    def speaker_then(self):

        # TODO: asema tähän
        
        s = Speaker(
            id         = self.speaker_id,
            first_name = self.speaker_first_name,
            last_name  = self.speaker_last_name,
            group      = self.speaker_group,
            number     = self.speaker_number,
        )

        return s

    def url(self):
        return "%s#a%d" % (self.subject.url(), self.id)

    get_absolute_url = url

    # urli, jonka takana on vain tama yksi puheenvuoro
    def single_url(self):
        return "%s/%d" % (self.subject.url(), self.id)

    def __unicode__(self):
        return '[%s] %s: %s' % (self.doc_id, self.speaker_last_name, self.text[0:50])

    # staattinen metodi hakuun
    @staticmethod
    def search(args):

        from copy import copy
        from urllib import urlencode

        objs = Action.objects
        year = args.get('vuosi',None)
        word_id = args.get('sana',None)
        speaker_id = args.get('puhuja',None)

        new_args = copy(args)
        if 'sivu' in new_args:
            del new_args['sivu']
        if 'contentonly' in new_args:
            del new_args['contentonly']

        url_prefix = '/puheenvuorot?' + urlencode(new_args) + '&sivu='

        if year:
            objs = objs.filter(date__year=year)
            objs = objs.order_by('date','abs_pos')
        else:
            objs = objs.order_by('-date','-abs_pos')

        if word_id:
            objs = objs.filter(occurrences__word_id=word_id)

        if speaker_id:
            objs = objs.filter(speaker_id=speaker_id)

        return (objs, url_prefix, year)


    class Meta:
        db_table = u'action'

