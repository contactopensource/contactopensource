class RenderAbstract:

    @classmethod
    def run(cls, entities):
        return cls.entities(entities)

    @classmethod
    def package(cls, package):
        return ""

    @classmethod
    def entities(cls, entities):
        return ''.join(map(cls.entity, entities))

    @classmethod
    def entity(cls, entity):
        return f"{entity.id}\n" + cls.attributes(entity.attributes) + "\n\n"

    @classmethod
    def attributes(cls, attributes):
        return ''.join(map(cls.attribute, attributes))

    @classmethod
    def attribute(cls, attribute):
        return f"{attribute.id}"

    @classmethod
    def entity_attribute_index_id(cls, entity, attribute):
        return f"index_{entity.id}_{attribute.id}"
