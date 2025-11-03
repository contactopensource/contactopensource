import logging
from . import attribute

def render(args, attribute_group):
    logging.info("attribute_group.py render(attribute_group)")
    s = ''
    for x in attribute_group.attributes:
        s += attribute.render(args, x)
    return s
