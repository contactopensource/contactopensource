"""
Render a PostgreSQL migration up.
"""

from pathlib import Path
from . import entity

def output_path():
    return Path("bin", "postgres-migrate-up.sql")

def render(entities):
    return ''.join(map(entity.render, entities))
