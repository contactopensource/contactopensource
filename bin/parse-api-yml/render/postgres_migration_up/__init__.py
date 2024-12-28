"""
Render a PostgreSQL migration up.
"""

from . import entity

def render(entities):
    return ''.join(map(entity.render, entities))
