from . import entity

def package(package):
    s = f"{package.id}\n\n"
    s += f"{package.summary} \n\n"
    s += "\n\n".join(entity.render, package.entities)
    return s
