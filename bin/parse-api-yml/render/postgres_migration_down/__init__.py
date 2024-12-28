"""
Render a PostgreSQL migration down.
"""

from . import entity

def render(entities):
    return ''.join(map(entity.render, entities))
