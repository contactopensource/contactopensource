from . import attribute

def render(attribute_group):
    return ''.join(map(attribute.render, attribute_group.attributes))
