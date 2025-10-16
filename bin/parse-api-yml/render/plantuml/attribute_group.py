from functools import partial
from . import attribute

def render(args, attribute_group):
    s = ''
    if attribute_group.id != '':
        s += f"  .. {attribute_group.id} ..\n"
    s += ''.join(map(partial(attribute.render, args), attribute_group.attributes))
    return s
