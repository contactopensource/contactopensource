import re

class RenderSQL:

    @classmethod
    def package(cls, package):
        return ""

    @classmethod
    def entities(cls, entities):
        s = ""
        for entity in entities:
            s += cls.entity(entity)
        return s

    @classmethod
    def entity(cls, entity):
        s = f"CREATE TABLE \"{entity.id}\" (\n"
        for attribute in entity.attributes:
            s += cls.attribute(attribute)        
        s += ");\n\n"
        for attribute in entity.attributes:
            x = cls.entity_attribute_index(entity, attribute)
            if x != None:
                s += x
        return s.strip() + "\n\n"

    @classmethod
    def attribute(cls, attribute):
        return f"  {attribute.id} {cls.attribute_type(attribute)},\n"

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
    def entity_attribute_index(cls, entity, attribute):
        if attribute.use_index():
            return f"CREATE INDEX index_{entity.id}_{attribute.id} on {entity.id}({attribute.id});\n"
        return None
