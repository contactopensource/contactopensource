from functools import partial
from . import attribute_group

def render(args, entity):
    s = "mix phx.gen.html \\\n"
    s += f"    {entity.module} {entity.model} {entity.table} \\\n"
    s += ''.join(map(partial(attribute_group.render, args), entity.attribute_groups))
    s += "    --force \\\n"
    s += "    --no-timestamps \\\n"
    s += "\n"
    return s
