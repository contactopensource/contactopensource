"""
Render a Rust Loco generator that runs `cargo loco generate scaffold`.

The generator generates a controller with view, templates, schema and context for an HTML resource.

Example output for `items`:

```
my_project
    manage.py
    items/
        migrations/
            __init__.py
        __init__.py
        admin.py
        apps.py
        models.py
        tests.py
        views.py
```
"""

import re
from .abstract import Abstract

class LocoGenerateScaffoldHtml(Abstract):

    def run(cls, entities):
        return cls.entities(entities)
    
    def package(cls, package):
        return ""

    def run(cls, entities):
        s = "#!/bin/sh\n"
        s += "set -euf\n"
        s += "\n"
        s += ''.join(map(cls.entity, entities))
        return s

    def entity(cls, entity):
        s = "cargo loco generate scaffold --html \\\n"
        s += f"    {entity.module} {entity.model} {entity.table} \\\n"
        s += ''.join(map(cls.attribute, entity.attribute_groups))
        s += "\n"
        return s

    def attribute(cls, attribute):
        return f"        {attribute.id}:{cls.attribute_type(attribute)}{cls.attribute_index(attribute)} \\\n"

    attribute_type_map = {
        'latitude', 'latitude',
        'longitude', 'longitude',
        'url', 'text',
    };

    def attribute_type(cls, attribute):
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
