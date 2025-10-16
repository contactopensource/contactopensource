from . import entity

def render(args, package):
    s = f"package {package.id} " + "{\n"
    s += ''.join(entity.render, package.entities)
    s += "}\n"
    if package.uml:
        s += f"\n{package.uml}\n"
    return s
