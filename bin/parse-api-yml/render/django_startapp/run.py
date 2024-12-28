from . import entity

def render(entities):
    s = "#!/bin/sh\n"
    s += "set -euf\n\n"
    s += ''.join(map(entity.render, entities))
    return s
