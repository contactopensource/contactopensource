from . import attribute_group

def render(entity):
    s = "mix ash.gen.resource \\\n"
    s += "    --default-actions create,read,update,destroy \\\\n"
    s += "    --extend postgres \\\\n"
    s += "    --uuid-primary-key id \\\\n"
    s += "    --force \\\n"
    s += "    --timestamps \\\\n"
    s += f"    {entity.module} {entity.model} {entity.table} \\\n"
    s += ''.join(map(attribute_group.render, entity.attribute_groups))
    s += "\n"
    return s
