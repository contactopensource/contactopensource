from . import attribute

def render(attribute_group):
    s = ''
    if attribute_group.id != '':
        s += f"  .. {attribute_group.id} ..\n"
    s += ''.join(map(attribute.render, attribute_group.attributes)) + "\n"
    return s
