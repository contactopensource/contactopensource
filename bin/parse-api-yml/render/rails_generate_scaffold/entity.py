from . import attribute_group

def render(entity):
    s = f"cargo loco generate scaffold \\\n"
    s += f"    {entity.id} \\\n"
    if entity.attribute_groups is not None:
        s += ''.join(map(attribute_group.render, entity.attribute_groups))
    s += "    --force \\\n"
    s += "    --no-timestamps \\\n"
    s += "\n"
    return s
