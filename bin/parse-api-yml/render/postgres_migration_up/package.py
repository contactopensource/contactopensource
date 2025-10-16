from . import entity

def render(args, cls, package):
    s = f"-- package id: {package.id}\n\n"
    s += f"-- package summary: {package.summary} \n\n"
    s += "\n\n".join(map(entity.render, package.entities))
    return s
