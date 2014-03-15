#!/usr/bin/python

import os

# Send any pending email for subscribers

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "puhsite.settings")
from django.conf import settings


from taysistunto.subscription_models import ActionSubscription, DocumentSubscription

for asub in ActionSubscription.objects.all():
    asub.catch_up()

for dsub in DocumentSubscription.objects.all():
    dsub.catch_up()
