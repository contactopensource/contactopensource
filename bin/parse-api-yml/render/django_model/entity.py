from functools import partial
from . import attribute_group

def render(args, entity):
    s = f"class {entity.model}(models.Model):\n"
    s += ''.join(map(partial(attribute_group.render, args), entity.attribute_groups))
    s += "\n"
    return s
