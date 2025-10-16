"""
Render a Ruby on Rails generator that runs `rails generate scaffold`.

The generator generates a model, controller, migration, tests, etc. for an HTML resource.
"""

from functools import partial
from pathlib import Path
from . import entity
from ..helpers import sh

def output_path():
    return Path("bin", "rails-generate-scaffold.sh")

def render(args, entities):
    return sh() + ''.join(map(partial(entity.render, args), entities))
