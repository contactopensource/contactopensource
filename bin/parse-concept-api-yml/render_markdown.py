class RenderMarkdown:

    @classmethod
    def package(cls, package):
        s = f"# {package.id}\n\n"
        s += f"{package.summary} \n\n"
        s += f"Entities:\n\n"
        for entity in package.entities:
            s += cls.entity_id(entity)
        return s

    @classmethod
    def entities(cls, entities):
        s = ""
        for entity in entities:
            s += cls.entity(entity)
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
