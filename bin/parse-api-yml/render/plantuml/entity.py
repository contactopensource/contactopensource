from . import attribute_group

def render(entity):
    s = f"entity {entity.id} {{\n"
    if entity.attribute_groups is not None:
        s += ''.join(map(attribute_group.render, entity.attribute_groups))
    s += "}\n"
    if entity.uml:
        s += f"\n{entity.uml}\n"
    s += "\n"
    return s
