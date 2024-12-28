from . import attribute_group

class Entity:

    def render(entity):
        s = "py manage.py startapp \\\n"
        s += f"    {entity.module} {entity.model} {entity.table} \\\n"
        s += ''.join(map(attribute_group.render, entity.attribute_groups))
        s += "\n"
        return s
