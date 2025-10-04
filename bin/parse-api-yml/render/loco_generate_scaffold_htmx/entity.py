from . import attribute_group

def render(entity):
    s = f"cargo loco generate scaffold --htmx \\\n"
    s += f"    {entity.id} \\\n"
    if entity.attribute_groups is not None:
        s += ''.join(map(attribute_group.render, entity.attribute_groups))
    s += "\n"
    return s
