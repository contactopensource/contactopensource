from functools import partial
from . import attribute_group

def render(args, entity):
    s = f"class {entity.id} {{\\\n"
    if entity.attribute_groups is not None:
        s += ''.join(map(partial(attribute_group.render, args), entity.attribute_groups))
    s += "};\n"
    return s
