import re
from render_abstract import RenderAbstract

class RenderRailsGenerator(RenderAbstract):

    @classmethod
    def run(cls, entities):
        return cls.entities(entities)
    
    @classmethod
    def package(cls, package):
        return ""

    @classmethod
    def run(cls, entities):
        s = "#!/bin/sh\n"
        s += "set -euf\n"
        s += "\n"
        s += ''.join(map(cls.entity, entities))
        return s

    @classmethod
    def entity(cls, entity):
        s = "rails generate scaffold \\\n"
        s += f"    {entity.id} \\\n"
        s += ''.join(map(cls.attribute, entity.attributes))
        s += "    --force \\\n"
        s += "    --no-timestamps \\\n"
        s += "\n"
        return s

    @classmethod
    def attribute(cls, attribute):
        return f"        {attribute.id}:{cls.attribute_type(attribute)}{cls.attribute_index(attribute)} \\\n"

    attribute_type_map = {
        'latitude', 'latitude',
        'longitude', 'longitude',
        'url', 'text',
    };

    @classmethod
    def attribute_type(cls, attribute):
        if attribute.use_join():
            return "references"
        # Search for a type with a constraint e.g. "string(1)"
        x = re.search("(string)\((\d+)\)", attribute.type)
        if x:
            # Return a quoted type and curly constraint e.g. "\"string{1}\""
            return "\"{}{{{}}}\"".format(x.group(1), x.group(2))
        return attribute.type

    @classmethod
    def attribute_index(cls, attribute):
        return ":index" if attribute.use_index() else ""
