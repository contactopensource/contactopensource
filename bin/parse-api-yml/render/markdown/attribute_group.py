from functools import partial
from . import attribute

def render(args, attribute_group):
    s = f"{attribute_group.id}:\n\n"
    if attribute_group.attributes is not None:
        s += ''.join(map(partial(attribute.render, args), attribute_group.attributes))
    return s
