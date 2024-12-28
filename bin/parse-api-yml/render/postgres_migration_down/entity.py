from . import attribute_group

def render(entity):
    s = f"DROP TABLE IF EXISTS {entity.id};\n"
    for attribute_group in entity.attribute_groups:
        for attribute in attribute_group.attributes:
            if attribute.index:
                s += f"DROP INDEX IF EXISTS index_{entity.id}_{attribute.id};\n"
    return s.strip() + "\n\n"
