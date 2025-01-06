"""
Render a Python Django model.
"""

from pathlib import Path
from . import entity
from ..helpers import sh

def output_path():
    return Path("bin", "django-model.py")

def render(entities):
    return sh() + ''.join(map(entity.render, entities))
