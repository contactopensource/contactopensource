from functools import partial
from . import attribute_group

def render(args, entity):
    s = f"cargo loco generate scaffold --html \\\n"
    s += f"    {entity.id} \\\n"
    if entity.attribute_groups is not None:
        s += ''.join(map(partial(attribute_group.render, args), entity.attribute_groups))
    s += "\n"
    return s
