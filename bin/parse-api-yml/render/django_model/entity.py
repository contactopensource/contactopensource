from . import attribute_group

def render(entity):
    s = f"class {entity.model}(models.Model):\n"
    s += ''.join(map(attribute_group.render, entity.attribute_groups))
    s += "\n"
    return s
