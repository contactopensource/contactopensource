from . import attribute_group

def render(entity):
    s = "mix phx.gen.html \\\n"
    s += f"    {entity.module} {entity.model} {entity.table} \\\n"
    s += ''.join(map(attribute_group.render, entity.attribute_groups))
    s += "    --force \\\n"
    s += "    --no-timestamps \\\n"
    s += "\n"
    return s
