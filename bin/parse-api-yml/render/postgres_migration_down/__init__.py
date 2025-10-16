"""
Render a PostgreSQL migration down.
"""

from functools import partial
from pathlib import Path
from . import entity

def output_path():
    return Path("bin", "postgres-migrate-down.sql")

def render(args, entities):
    return ''.join(map(partial(entity.render, args), entities))
