import re

class RenderRailsGenerator:

    @classmethod
    def package(cls, package):
        return ""

    @classmethod
    def entities(cls, entities):
        s = "#!/bin/sh\n"
        s += "set -euf\n"
        s += "\n"
        for entity in entities:
            s += cls.entity(entity)
        return s

    @classmethod
    def entity(cls, entity):
        s = "rails generate scaffold \\\n"
        s += f"    {entity.id} \\\n"
        s += "        tenant_id:id \\\n"
        s += "        parent_id:id \\\n"
        s += "        set_id:id \\\n"
        s += "        type_id:id \\\n"
        s += "        state_id:id \\\n"
        s += "        created_at:datetime \\\n"
        s += "        updated_at:datetime \\\n"
        s += "        state:text:index \\\n"
        for attribute in entity.attributes:
            s += "        " + cls.attribute(attribute)
        s += "    --force \\\n"
        s += "    --no-timestamps \\\n"
        s += "\n"
        return s

    @classmethod
    def attribute(cls, attribute):
        return f"{attribute.id}:{cls.attribute_type(attribute)}{cls.attribute_index(attribute)} \\\n"

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
