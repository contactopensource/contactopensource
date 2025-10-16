"""
Render a PostgreSQL migration up.
"""

from functools import partial
from pathlib import Path
from . import entity

def output_path():
    return Path("bin", "postgres-migrate-up.sql")

def render(args, entities):
    return ''.join(map(partial(entity.render, args), entities))
