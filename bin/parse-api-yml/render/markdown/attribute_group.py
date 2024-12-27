from . import attribute

def render(attribute_group):
    s = f"{attribute_group.id}:\n\n"
    if attribute_group.attributes is not None:
        s += ''.join(map(attribute.render, attribute_group.attributes))
    return s
