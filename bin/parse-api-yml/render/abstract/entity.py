from . import attribute_group

def render(entity):
    return f"{entity.id}\n" + ''.join(map(attribute_group.render, entity.attribute_groups)) + "\n\n"
