"""
Render an abstract object.
"""

class Abstract:

    def run(cls, entities):
        return cls.entities(entities)

    def package(cls, package):
        return ""

    def entities(cls, entities):
        if entities is None:
            return ''
        return ''.join(map(cls.entity, entities))

    def entity(cls, entity):
        if entity is None:
            return ''
        return f"{entity.id}\n" + cls.attributes(entity.attribute_groups) + "\n\n"

    def attribute_groups(cls, attribute_groups):
        if attribute_groups is None:
            return ''
        return ''.join(map(cls.attribute_group, attribute_groups))

    def attribute_group(cls, attribute_group):
        if attribute_group is None:
            return ''
        return f"AttributeGroup {attribute_group.id}\n\n" + cls.attributes(attribute_group.attributes) + "\n\n"

    def attributes(cls, attributes):
        if attributes is None:
            return ''
        return ''.join(map(cls.attribute, attributes))

    def attribute(cls, attribute):
        if attribute is None:
            return ''
        return f"{attribute.id}"

    def entity_attribute_index_id(cls, entity, attribute):
        if entity is None or attribute is None:
            return ''
        return f"index_{entity.id}_{attribute.id}"
