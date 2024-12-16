"""
Render a PostgreSQL migration up file.
"""

from itertools import repeat
from .abstract import Abstract

class PostgresMigrationUp(Abstract):

    def run(cls, entities):
        return cls.entities(entities)
    
    def entity(cls, entity):
        s = f"CREATE TABLE {entity.id} (\n"
        s += ''.join(map(cls.attribute, entity.attribute_groups))
        s += ");\n\n"
        s += ''.join(filter(lambda x: x is not None, map(cls.entity_attribute_index, repeat(entity), entity.attribute_groups)))
        return s.strip() + "\n\n"

    def attribute(cls, attribute):
        return f"  {attribute.id} {cls.attribute_type(attribute)},\n"

    attribute_type_map = {
        'latitude', 'latitude',
        'longitude', 'longitude',
        'url', 'text',
    };

    def attribute_type(cls, attribute):
        return attribute.type
    
    def entity_attribute_index(cls, entity, attribute):
        if attribute.use_index():
            id = cls.entity_attribute_index_id(entity, attribute)
            return f"CREATE INDEX {id} on {entity.id}({attribute.id});\n"
        return None
