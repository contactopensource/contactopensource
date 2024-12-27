"""
Render a Markdown documentation file.
"""
from . import entity

def render(entities):
    return ''.join(map(entity.render, entities))
