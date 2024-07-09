from itertools import repeat
from render_abstract import RenderAbstract

class RenderPostgresMigrationUp(RenderAbstract):

    @classmethod
    def run(cls, entities):
        return cls.entities(entities)
    
    @classmethod
    def entity(cls, entity):
        s = f"CREATE TABLE {entity.id} (\n"
        s += ''.join(map(cls.attribute, entity.attributes))
        s += ");\n\n"
        s += ''.join(filter(lambda x: x is not None, map(cls.entity_attribute_index, repeat(entity), entity.attributes)))
        return s.strip() + "\n\n"

    @classmethod
    def attribute(cls, attribute):
        return f"  {attribute.id} {cls.attribute_type(attribute)},\n"

    attribute_type_map = {
        'latitude', 'latitude',
        'longitude', 'longitude',
        'url', 'text',
    };

    @classmethod
    def attribute_type(cls, attribute):
        return attribute.type
    
    @classmethod
    def entity_attribute_index(cls, entity, attribute):
        if attribute.use_index():
            id = cls.entity_attribute_index_id(entity, attribute)
            return f"CREATE INDEX {id} on {entity.id}({attribute.id});\n"
        return None
