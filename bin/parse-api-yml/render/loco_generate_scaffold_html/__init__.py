"""
Render a Rust Loco generator that runs `cargo loco generate scaffold`.

The generator generates a controller with view, templates, schema and context for an HTML resource.
"""

from ..helpers import sh
from . import entity

def render(entities):
    return sh() + ''.join(map(entity.render, entities))
