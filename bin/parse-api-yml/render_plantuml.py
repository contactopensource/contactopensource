from render_abstract import RenderAbstract

class RenderPlantUML(RenderAbstract):

    @classmethod
    def run(cls, entities):
        s = "@startuml uml\n"
        s += "skinparam monochrome true\n"
        s += "skinparam linetype ortho\n"
        s += "hide circle\n"
        s += "\n"
        s += cls.entities(entities)
        s += "@enduml\n"
        return s
    
    @classmethod
    def package(cls, package):
        s = f"package {package.id} " + "{\n"
        s += ''.join(cls.entity_id, package.entities)
        s += "}\n"
        if package.uml:
            s += f"\n{package.uml}\n"
        return s

    @classmethod
    def entity_id(cls, entity):
        return f"{entity.id}\n"

    @classmethod
    def entity(cls, entity):
        s = f"entity {entity.id} " + "{\n"
        s += cls.attributes(entity.attributes)
        s += "}\n"
        if entity.uml:
            s += f"\n{entity.uml}\n"
        s += "\n"
        return s

    @classmethod
    def attribute(cls, attribute):
        return f"  {attribute.id} : {attribute.type}{cls.attribute_index(attribute)}\n"

    @classmethod
    def attribute_index(cls, attribute):
        return "+" if attribute.use_index() else ""
