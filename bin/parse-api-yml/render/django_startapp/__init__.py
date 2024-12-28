"""
Render a Python Django generator.

The generator generates a controller with view, templates, schema and context for an HTML resource.
"""

from pathlib import Path
from . import entity
from ..helpers import sh

def output_path():
    return Path("bin", "django-generate.sh")

def render(entities):
    return sh() + ''.join(map(entity.render, entities))
