"""
Render a PostgreSQL migration down.
"""

from pathlib import Path
from . import entity

def output_path():
    return Path("bin", "postgres-migrate-down.sql")

def render(entities):
    return ''.join(map(entity.render, entities))
