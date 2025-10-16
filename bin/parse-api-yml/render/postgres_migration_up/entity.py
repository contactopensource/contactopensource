from functools import partial
from . import attribute_group

def render(args, entity):
    s = f"CREATE TABLE {entity.id} (\n"
    # s += ''.join(map(partial(attribute_group.render, args), entity.attribute_groups))
    s += ");\n\n"
    if entity.attribute_groups is not None:
        for attribute_group in entity.attribute_groups:
            for attribute in attribute_group.attributes:
                if attribute.index:
                    s += f"CREATE INDEX index_{entity.id}_{attribute.id} on {entity.id}({attribute.id});\n"
    return s.strip() + "\n\n"
