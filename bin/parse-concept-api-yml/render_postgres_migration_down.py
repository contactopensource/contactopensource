from render_abstract import RenderAbstract

class RenderPostgresMigrationDown(RenderAbstract):

    @classmethod
    def entity(cls, entity):
        s = f"DROP TABLE IF EXISTS \"{entity.id}\";\n"
        for attribute in entity.attributes:
            x = cls.entity_attribute_index(entity, attribute)
            if x != None:
                s += x
        return s.strip() + "\n\n"

    @classmethod
    def entity_attribute_index(cls, entity, attribute):
        if attribute.use_index():
            id = cls.entity_attribute_index_id(entity, attribute)
            return f"DROP INDEX IF EXISTS {id};\n"
        return None
