"""
Render an Elixir Phoenix generator that runs `mix phx.gen.html`.

The generator generates a controller with view, templates, schema and context for an HTML resource.
"""

from .. import render
from . import entity

def render(entities):
    return sh() + ''.join(map(entity, entities))
