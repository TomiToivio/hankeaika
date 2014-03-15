# -*- coding: utf-8 -*-

from taysistunto.models import Speaker, Subject, Document, Word, Action
from django.http import HttpResponse, Http404
from django.shortcuts import render_to_response, get_object_or_404, redirect
from django.core import serializers
from django.db.models import Count
import datetime
from django.http import HttpResponseNotFound
from django.template import loader, Context, RequestContext
from taysistunto.subscription_models import *

from django.views.decorators.cache import never_cache

import json
import re

from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

def index(request, page=1):

    paginator = Paginator(Document.objects.exclude(title="0"), 10)

    docs = paginator.page(int(page))
 
    # syötteen tilaamista varten
    current_speakers = Speaker.objects.filter(is_current=1).defer('details_c')
    
    return render_to_response('taysistunto/index.html', {
        'docs':docs.object_list,
        'current_speakers': current_speakers,
        'page':docs,
        'page_url_prefix': '/',
    }, context_instance=RequestContext(request))

def document(request, id):
    doc = get_object_or_404(Document, id=id)
    return render_to_response('taysistunto/yksi-istunto.html', {'doc': doc, 'show_details': True})

def subject(request, doc_id, subject_id):
    doc = get_object_or_404(Document, id=doc_id)
    subj = get_object_or_404(Subject, id=subject_id)
    actions = subj.actions.all()

    return render_to_response('taysistunto/keskustelu.html', {
        'doc': doc,
        'subj': subj,
        'actions': actions
    })

def action(request, doc_id, subject_id, action_id):
    doc = get_object_or_404(Document, id=doc_id)
    subj = get_object_or_404(Subject, id=subject_id)
    action = get_object_or_404(Action, id=action_id)
    
    return render_to_response('taysistunto/keskustelu-puheenvuoro.html', {
        'doc': doc,
        'subj': subj,
        'actions': [action],
    })

# @never_cache # tmp!
def speaker(request, id):
    speaker = get_object_or_404(Speaker, id=id)

    action_search_args = { 'puhuja': speaker.id }
    if 'vuosi' in request.GET:
        action_search_args['vuosi'] = request.GET['vuosi'];

    (actions, actions_url_prefix, year) = Action.search(action_search_args)

    return render_to_response('taysistunto/puhuja.html', {
        'speaker': speaker,
        'trend_url_prefix': '?vuosi=',
#        'action_count': speaker.actions.count(),
        'actions': actions[0:10],
        'actions_url_prefix': actions_url_prefix,
        # 'latest_actions': speaker.actions.all().order_by('-date','-abs_pos')[0:10],
        'years': range(1999, datetime.datetime.now().year+1), # huom: myos speaker-funktiossa
    })


def action_search(request):
    
    # hetkellisesti pois kaytosta tama, koska kuormitti liikaa eika ehdi optimoida nyt just.
    if 'TEST' not in request.GET:
        return HttpResponse(content="Hetkinen...", mimetype="text/html", status=500)

    (objs, url_prefix, year) = Action.search(request.GET)

    if 'sana' in request.GET:
        word = get_object_or_404(Word, id=request.GET['sana'])
    else:
        word = None

    if 'puhuja' in request.GET:
        speaker = get_object_or_404(Speaker, id=request.GET['puhuja'])
    else:
        speaker = None

    page_number = request.GET.get('sivu', 1)

    paginator = Paginator(objs, 12)
    actions = paginator.page(int(page_number))

    if 'contentonly' in request.GET:
        tpl = 'taysistunto/include/puheenvuoron-alku.html'
    else:
        tpl = 'taysistunto/puheenvuorohakutulokset.html'

    return render_to_response(tpl, {
        'actions':actions.object_list,
        'speaker':speaker,
        'year':year,
        'word':word,
        'page':actions,
        'page_count': paginator.num_pages,
        'page_range': paginator.page_range,
        'actions_url_prefix': url_prefix,
    })

def latest_speaker_actions(request, id, page=1, year=None):

    speaker = get_object_or_404(Speaker, id=id)

    src = Action.objects.filter(speaker_id=id)
    page_url_prefix = speaker.url() + '/puheenvuorot/'
    if year:
        src = src.filter(date__year=year)
        page_url_prefix += 'vuosi-%s/' % year

    paginator = Paginator(src.order_by('-date','-abs_pos'), 10)
    actions = paginator.page(int(page))
    
    return render_to_response('taysistunto/puhujan-kaikki-puheenvuorot.html', {
        'actions':actions.object_list,
        'speaker':speaker,
        'year':year,
        'page':actions,
        'page_count': paginator.num_pages,
        'page_range': paginator.page_range,
        'page_url_prefix': page_url_prefix,
    })



def latest_speaker_actions_ajax(request, id, year=None):

    speaker = get_object_or_404(Speaker, id=id)

    src = Action.objects.filter(speaker_id=id)
    if year:
        src = src.filter(date__year=year)
    
    return render_to_response('taysistunto/include/puhujan-uusimmat-puheenvuorot.html', {
        'year':year,
        'latest_actions':src[0:10],
        'action_count':src.count(),
        'speaker':speaker,
    })

def all_speakers(request):
    # current_mps = Speaker.objects.defer('details_c').filter(is_current=1)
    other_speakers = Speaker.objects.defer('details_c').filter(is_current=0)

    # HUOM: ryhmät myös index.html:ssä!
    groups = [
        {'id':'kok', 'name': 'Kansallisen kokoomuksen eduskuntaryhmä'},
        {'id':'sd',  'name': 'Sosialidemokraattinen eduskuntaryhmä'},
        {'id':'ps',  'name': 'Perussuomalaisten eduskuntaryhmä'},
        {'id':'kesk','name': 'Keskustan eduskuntaryhmä'},
        {'id':'vas', 'name': 'Vasemmistoliiton eduskuntaryhmä'},
        {'id':'r',   'name': 'Ruotsalainen eduskuntaryhmä'},
        {'id':'vihr','name': 'Vihreä eduskuntaryhmä'},
        {'id':'kd',  'name': 'Kristillisdemokraattinen eduskuntaryhmä'},
        {'id':'vr',  'name': 'Vasenryhmän eduskuntaryhmä'},
    ]

    for g in groups:
        g['members'] = Speaker.objects.defer('details_c').filter(is_current=1, group=g['id'])


    return render_to_response('taysistunto/kaikki-puhujat.html', {
      'current_groups': groups,
      'other_speakers': other_speakers,
    })

def word(request, word):
    from copy import copy

    try:
        word_obj = Word.objects.get(word=word)

        speaker_id = request.GET.get('puhuja',None)
        if speaker_id:
            speaker = get_object_or_404(Speaker, id=speaker_id)
        else:
            speaker = None

        action_search_args = copy(request.GET)
        action_search_args['sana'] = word_obj.id

        (actions, url_prefix, year) = Action.search(action_search_args)

        return render_to_response('taysistunto/sana.html', {
            'word':word_obj,
            'actions': actions[0:10],
            'occurrence_by_month':word_obj.occurrence_by_month(speaker_id=speaker_id),
            'trend_url_prefix': '?vuosi=',
            'admin':request.user.is_authenticated(),
            'actions_url_prefix': url_prefix,
            'year':year,
            'speaker':speaker,
            'years': range(1999, datetime.datetime.now().year+1), # huom: myos speaker-funktiossa
        })
    except Word.DoesNotExist:
        t = loader.get_template('taysistunto/sanat.html')

        ret = t.render(
            Context({ 'word_not_found': word }))

        return HttpResponseNotFound(ret)


def archive(request, chosen_year=None):

    years = Document.objects.values('year').annotate(Count('id')).order_by('-year');
    if chosen_year==None:
        return redirect('/arkisto/%d' % years[0]['year'])

    docs = Document.objects.filter(year=chosen_year).order_by('date', 'id')

    return render_to_response('taysistunto/arkisto.html', {
        'chosen_year':int(chosen_year),
        'years':years,
        'docs':docs,
    })
    

def words(request):
    speakers = Speaker.objects.all()
    return render_to_response('taysistunto/sanat.html', { 'speakers': speakers})

def static_content(request, tpl):
    return render_to_response('taysistunto/static_content/' + tpl + '.html', {})

def stopify(request, word):
    word = get_object_or_404(Word, word=word)
    word.stop = 'Stop'
    word.save()
    return HttpResponse("stopattiin sana '%s'." % word.word);
    
@never_cache
def test_document_mail(request):
    ds = DocumentSubscription.objects.get(id=1)

    d = Document.objects.get(id='63-2011')

    return HttpResponse('<html><head><title>TEST DOCUMENT MAIL</title><body>' + ds.get_mail_body(d) + '</body></html>')

@never_cache
def test_action_mail(request, action_id):
    asub = ActionSubscription.objects.get(id=1)

    a = Action.objects.get(id=action_id)

    return HttpResponse('<html><head><title>TEST ACTION MAIL</title><body>' + asub.get_mail_body(a) + '</body></html>')

@never_cache
def subscribe(request):

    # POST-parametrit:
    # follow_this = document
    # follow_this = speaker
    #   speaker_id = 123 (tai tyhjä)
    # follow_this = group
    #   speaker_group = kok
    # follow_this = keywords
    #   keywords = vr, junalippu

    # follow_method = feed
    # follow_method = email
    #   email = seuraajan.osoite@osoite.fi
    
    import sys
    
    try:
        follow_this   = request.POST['follow_this']
        follow_method = request.POST['follow_method']
        
        speaker_id    = request.POST['speaker_id']
        speaker_group = request.POST['speaker_group']
        keywords      = request.POST['keywords']
        
        email         = request.POST['email']
    
        sys.stderr.write("F:" + repr(follow_method) + " : " + repr(email))
        
        
        if follow_method == 'email':
            from django.core.validators import validate_email
            sys.stderr.write("F2:" + repr(follow_method) + " : " + repr(email))
            validate_email(email)
            sys.stderr.write("F3:" + repr(follow_method) + " : " + repr(email))
        
        if follow_this == 'keywords' and not re.match(r'\w', keywords):
            keywords = 'vr, junalippu'
            
    except:
        return Http404

    if 'validate' in request.POST:
        return HttpResponse('OK', mimetype="text/plain")


    feed_url = ''
    
    if follow_this == 'document':
        if follow_method == 'email':
            dsub = DocumentSubscription()
            dsub.email = email
            
            last_doc = Document.objects.order_by('-date')[0]
            dsub.latest_send_date = last_doc.date
            dsub.save()
        else:
            feed_url = '/istunnot/syote'
            feed_title = 'Uusimmat täysistunnot'
    else:
        asub = ActionSubscription()
          
        if follow_this == 'speaker':
            if speaker_id:
                asub.speaker_id = speaker_id
        elif follow_this == 'group':
            asub.speaker_group = speaker_group
        elif follow_this == 'keywords':
            asub.keywords = keywords
          
        if follow_method == 'email':
            asub.email = email
            latest_action = Action.objects.order_by('-id')[0]
            asub.latest_action_id = latest_action.id
            asub.save()
        else:
            # follow_method = feed
            feed_url = asub.feed_url()
            feed_title = asub.__unicode__()
            
    if follow_method == 'email':
        checksum = SubscriptionHelper.get_checksum(email)
        return redirect('/tilaukset/%s-%s' % (email, checksum))
    else:
        return render_to_response('taysistunto/syotteen-tilaus.html', {
            'feed_url': 'http://puheenvuorot.kansanmuisti.fi' + feed_url,
            'feed_title': feed_title,
        })
      
      
@never_cache
def manage_subscriptions(request, email, checksum):
    
    if SubscriptionHelper.get_checksum(email) != checksum:
        raise Http404

    s = []

    s += DocumentSubscription.objects.filter(email=email)
    s += ActionSubscription.objects.filter(email=email)

    return render_to_response('taysistunto/manage-subscriptions.html', {
        'email': email,
        'checksum': checksum,
        'subscriptions' : s,
    }, context_instance=RequestContext(request))

@never_cache
def end_subscription(request, email, checksum, id=None):
    
    if SubscriptionHelper.get_checksum(email) != checksum:
        raise Http404

    if id:
        s = get_object_or_404(ActionSubscription, email=email, id=id)
        s.delete()
    else:
        s = get_object_or_404(DocumentSubscription, email=email)
        s.delete()
    
    return redirect('/tilaukset/%s-%s' % (email, checksum))

