from ..helpers import sh
from . import entity

def render(entities):
    return sh() + ''.join(map(entity.render, entities))
