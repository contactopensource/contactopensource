"""
Render a PlantUML file.
"""
from . import entity

def render(entities):
    s = "@startuml uml\n"
    s += "skinparam monochrome true\n"
    s += "skinparam linetype ortho\n"
    s += "hide circle\n"
    s += "\n"
    s += ''.join(map(entity.render, entities))
    s += "@enduml\n"
    return s
