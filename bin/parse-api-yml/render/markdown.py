"""
Render a Markdown documentation file.
"""

from .abstract import Abstract

class Markdown(Abstract):

    def package(cls, package):
        s = f"# {package.id}\n\n"
        s += f"{package.summary} \n\n"
        s += f"Entities:\n\n"
        s += "\n\n".join(cls.entity_id, package.entities)
        return s

    def entity_id(cls, entity):
        s = f"# {entity.id}\n\n"
        return s

    def entity(cls, entity):
        s = f"# {entity.id}\n\n"
        if entity.summary is not None:
            s += f"{entity.summary}\n\n\n"
        # s += f"Metadata:\n\n"
        # s += f"* module: {entity.module}\n\n"
        # s += f"* model: {entity.model}\n\n"
        # s += f"* table: {entity.table}\n\n"
        if entity.attribute_groups is not None:
            s += f"## Attributes\n\n" + cls.attribute_groups(entity.attribute_groups)
        return s

    def attribute_group(cls, attribute_group):
        if attribute_group.attributes is not None:
            s = f"{attribute_group.id}:\n\n"
            if attribute_group.attributes is not None:
                for attribute in attribute_group.attributes:
                    s += cls.attribute(attribute)
        return s

    def attribute(cls, attribute):
        return f"  * {attribute.id}: {attribute.type}{cls.attribute_index(attribute)} -- example: {attribute.example}\n\n"

    def attribute_index(cls, attribute):
        return "+" if attribute.use_index() else ""
