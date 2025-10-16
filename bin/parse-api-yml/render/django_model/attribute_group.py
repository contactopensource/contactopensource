from functools import partial
from . import attribute

def render(args, attribute_group):
    return ''.join(map(partial(attribute.render, args), attribute_group.attributes))
