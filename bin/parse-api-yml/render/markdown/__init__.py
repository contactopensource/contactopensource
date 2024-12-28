"""
Render a Markdown documentation file.
"""

from pathlib import Path
from . import entity

def output_path():
    return Path("index.md")

def render(entities):
    return ''.join(map(entity.render, entities))
