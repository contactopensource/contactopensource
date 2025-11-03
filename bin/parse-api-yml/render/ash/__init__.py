"""
Render a Mix Ash generator that runs `mix ash.gen.resource`.

The generator generates a controller with view, templates, schema and context.

<https://hexdocs.pm/ash/Mix.Tasks.Ash.Gen.Resource.html>
"""

from functools import partial
from pathlib import Path
from . import entity
from ..helpers import sh

def output_path():
    return Path("bin", "ash", "mix-ash-gen-resource.sh")

def render(args, entities):
    return sh() + ''.join(map(partial(entity.render, args), entities))

