"""
Render a Rust Loco generator that runs `cargo loco generate scaffold`.

The generator generates a controller with view, templates, schema and context for an HTML resource.
"""

from . import entity

def render(entities):
    s = "#!/bin/sh\n"
    s += "set -euf\n\n"
    s += ''.join(map(entity.render, entities))
    return s

