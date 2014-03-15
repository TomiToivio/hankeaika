import json
from django.template import Library

register = Library()

def jsonify(object):
    ret = json.dumps(object)
    # TODO: js-eskapoi "<" yms., jotta varmasti turvallinen mielivaltaisellakin datalla
    return ret

register.filter('jsonify', jsonify)