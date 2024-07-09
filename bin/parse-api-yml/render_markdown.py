from render_abstract import RenderAbstract

class RenderMarkdown(RenderAbstract):

    @classmethod
    def package(cls, package):
        s = f"# {package.id}\n\n"
        s += f"{package.summary} \n\n"
        s += f"Entities:\n\n"
        s += ''.join(cls.entity_id, package.entities)
        return s

    @classmethod
    def entity_id(cls, entity):
        s = f"# {entity.id}\n\n"
        return s

    @classmethod
    def entity(cls, entity):
        s = f"# {entity.id}\n\n"
        s += f"{entity.summary} \n\n"
        s += f"Attributes:\n\n"
        for attribute in entity.attributes:
            s += cls.attribute(attribute)
        return s

    @classmethod
    def attribute(cls, attribute):
        return f"* {attribute.id}: {attribute.type}{cls.attribute_index(attribute)} -- example: {attribute.example}\n\n"

    @classmethod
    def attribute_index(cls, attribute):
        return "+" if attribute.use_index() else ""
