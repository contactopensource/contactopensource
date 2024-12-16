"""
Render a PostgreSQL migration down file.
"""

from .abstract import Abstract

class PostgresMigrationDown(Abstract):

    def entity(cls, entity):
        s = f"DROP TABLE IF EXISTS {entity.id};\n"
        for attribute in entity.attribute_groups:
            x = cls.entity_attribute_index(entity, attribute)
            if x != None:
                s += x
        return s.strip() + "\n\n"

    def entity_attribute_index(cls, entity, attribute):
        if attribute.use_index():
            id = cls.entity_attribute_index_id(entity, attribute)
            return f"DROP INDEX IF EXISTS {id};\n"
        return None
