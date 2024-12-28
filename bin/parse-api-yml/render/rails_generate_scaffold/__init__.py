"""
Render a Ruby on Rails generator that runs `rails generate scaffold`.

The generator generates a model, controller, migration, tests, etc. for an HTML resource.
"""

from ..helpers import sh
from . import entity

def render(entities):
    return sh() + ''.join(map(entity.render, entities))
