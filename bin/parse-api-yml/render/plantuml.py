"""
Render a PlantUML file.
"""

from .abstract import Abstract

class PlantUML(Abstract):

    def run(cls, entities):
        s = "@startuml uml\n"
        s += "skinparam monochrome true\n"
        s += "skinparam linetype ortho\n"
        s += "hide circle\n"
        s += "\n"
        s += cls.entities(entities)
        s += "@enduml\n"
        return s
    
    def package(cls, package):
        s = f"package {package.id} " + "{\n"
        s += ''.join(cls.entity_id, package.entities)
        s += "}\n"
        if package.uml:
            s += f"\n{package.uml}\n"
        return s

    def entity_id(cls, entity):
        return f"{entity.id}\n"

    def entity(cls, entity):
        s = f"entity {entity.id} {{\n"
        if entity.attribute_groups is not None:
            s += cls.attribute_groups(entity.attribute_groups)
        s += "}\n"
        if entity.uml:
            s += f"\n{entity.uml}\n"
        s += "\n"
        return s

    def attribute_group(cls, attribute_group):
        return f"  .. {attribute_group.id} ..\n" + cls.attributes(attribute_group.attributes)

    def attribute(cls, attribute):
        return f"  {attribute.id} : {attribute.type}{cls.attribute_index(attribute)}\n"

    def attribute_index(cls, attribute):
        return "+" if attribute.use_index() else ""
