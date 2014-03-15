from taysistunto.models import *
from taysistunto.subscription_models import *
from django.contrib import admin


class SpeakerAdmin(admin.ModelAdmin):
    search_fields = ['^last_name','^first_name']
    ordering = ['last_name','first_name']
    
class WordAdmin(admin.ModelAdmin):
    search_fields = ['=stop','^word']
    list_filter = ('known', 'stop')
    ordering = ['word']

class SubjectAdmin(admin.ModelAdmin):
    search_fields = ['subject']
    ordering = ['id']

class ActionAdmin(admin.ModelAdmin):
    search_fields = ['doc_id']
    ordering = ['-date']
    
    
admin.site.register(Action, ActionAdmin)
admin.site.register(Speaker, SpeakerAdmin)
admin.site.register(Word, WordAdmin)
admin.site.register(Subject, SubjectAdmin)
admin.site.register(WordOccurrence)
admin.site.register(DocumentSubscription)


