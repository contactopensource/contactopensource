"""
Render a Python Django model.
"""

from functools import partial
from pathlib import Path
from . import entity
from ..helpers import sh

def output_path():
    return Path("bin", "django", "django-model.py")

def render(args, entities):
    return sh() + ''.join(map(partial(entity.render, args), entities))
