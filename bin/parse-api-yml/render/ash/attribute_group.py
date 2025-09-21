import logging
from . import attribute

def render(attribute_group):
    logging.info("attribute_group.py render(attribute_group)")
    output = {'script': '', 'extra': ''}
    for x in attribute_group.attributes:
        x = attribute.render(x)
        output['script'] += x['script']
        output['extra'] += x['extra']
    return output
