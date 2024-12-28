"""
Render a Ruby on Rails generator that runs `rails generate scaffold`.

The generator generates a model, controller, migration, tests, etc. for an HTML resource.
"""

from pathlib import Path
from . import entity
from ..helpers import sh

def output_path():
    return Path("bin", "rails-generate-scaffold.sh")

def render(entities):
    return sh() + ''.join(map(entity.render, entities))
