class RenderPlantUML:

    @classmethod
    def package(cls, package):
        s = f"package {package.id} " + "{\n"
        for entity in package.entities:
            s += cls.entity_id(entity)
        s += "}\n"
        if package.uml:
            s += f"\n{package.uml}\n"
        return s

    @classmethod
    def entities(cls, entities):
        s = "@startuml uml\n"
        s += "skinparam monochrome true\n"
        s += "skinparam linetype ortho\n"
        s += "hide circle\n"
        s += "\n"
        for entity in entities:
            s += cls.entity(entity)
        s += "@enduml\n"
        return s

    @classmethod
    def entity(cls, entity):
        s = f"entity {entity.id} " + "{\n"
        for attribute in entity.attributes:
            s += cls.attribute(attribute)
        s += "}\n"
        if entity.uml:
            s += f"\n{entity.uml}\n"
        return s

    @classmethod
    def attribute(cls, attribute):
        return f"  {attribute.id} : {attribute.type}{cls.attribute_index(attribute)}\n"

    @classmethod
    def attribute_index(cls, attribute):
        return "+" if attribute.use_index() else ""
