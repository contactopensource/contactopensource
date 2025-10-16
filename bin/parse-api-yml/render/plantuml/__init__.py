"""
Render a PlantUML file.
"""

from functools import partial
from pathlib import Path
from . import entity

def output_path():
    return Path("uml", "uml.plantuml")

def render(args, entities):
    s = "@startuml uml\n"
    s += "skinparam monochrome true\n"
    s += "skinparam linetype ortho\n"
    s += "hide circle\n"
    s += "\n"
    s += ''.join(map(partial(entity.render, args), entities))
    s += "@enduml\n"
    return s
