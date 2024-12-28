"""
Render an Elixir Phoenix generator that runs `mix phx.gen.html`.

The generator generates a controller with view, templates, schema and context for an HTML resource.
"""

from . import entity

def render(entities):
    s = "#!/bin/sh\n"
    s += "set -euf\n\n"
    s += ''.join(map(entity, entities))
    return s
