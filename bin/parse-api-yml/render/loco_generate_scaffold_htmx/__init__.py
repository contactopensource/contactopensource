"""
Render a Rust Loco generator that runs `cargo loco generate scaffold`.

The generator generates a controller with view, templates, schema and context for an HTML resource.
"""

from functools import partial
from pathlib import Path
from . import entity
from ..helpers import sh

def output_path():
    return Path("bin", "loco-generate-scaffold-html.sh")

def render(args, entities):
    return sh() + ''.join(map(partial(entity.render, args), entities))
