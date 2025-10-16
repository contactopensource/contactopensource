from functools import partial
from . import attribute_group

def render(args, entity):
    s = f"# {entity.id}\n\n"
    if entity.summary is not None:
        s += f"{entity.summary}\n\n\n"
    # s += f"Metadata:\n\n"
    # s += f"* module: {entity.module}\n\n"
    # s += f"* model: {entity.model}\n\n"
    # s += f"* table: {entity.table}\n\n"
    if entity.attribute_groups is not None:
        s += f"## Attributes\n\n" + ''.join(map(partial(attribute_group.render, args), entity.attribute_groups))
    return s
