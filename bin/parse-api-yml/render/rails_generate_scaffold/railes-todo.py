"""
Render a Ruby On Rails generator file.
"""

import re
from . import abstract

class RailsGenerateScaffold(Abstract):

    def run(cls, entities):
        return entities(entities)
    
    def package(cls, package):
        return ""

    def run(cls, entities):
        s = "#!/bin/sh\n"
        s += "set -euf\n"
        s += "\n"
        s += ''.join(map(entity, entities))
        return s

    def entity(cls, entity):
        s = "rails generate scaffold \\\n"
        s += f"    {entity.id} \\\n"
        s += ''.join(map(attribute, entity.attribute_groups))
        s += "    --force \\\n"
        s += "    --no-timestamps \\\n"
        s += "\n"
        return s

    def attribute(cls, attribute):
        return f"        {attribute.id}:{attribute_type(attribute)}{attribute_index(attribute)} \\\n"

    attribute_type_map = {
        'latitude', 'latitude',
        'longitude', 'longitude',
        'url', 'text',
    };

    def attribute_type(attribute):
        if attribute.use_join():
            return "references"
        # Search for a type with a constraint e.g. "string(1)"
        x = re.search("(string)\((\d+)\)", attribute.type)
        if x:
            # Return a quoted type and curly constraint e.g. "\"string{1}\""
            return "\"{}{{{}}}\"".format(x.group(1), x.group(2))
        return attribute.type

    def attribute_index(cls, attribute):
        return ":index" if attribute.use_index() else ""
