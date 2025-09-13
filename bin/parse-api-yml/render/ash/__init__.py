"""
Render a Mix Ash generator that runs `mix ash.gen.resource`.

The generator generates a controller with view, templates, schema and context.
"""

from pathlib import Path
from . import entity
from ..helpers import sh

def output_path():
    return Path("bin", "ash.sh")

def render(entities):
    return sh() + ''.join(map(entity.render, entities))

