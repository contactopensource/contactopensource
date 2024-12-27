from . import entity

class Package:

    @staticmethod
    def package(cls, package):
        s = f"# {package.id}\n\n"
        s += f"{package.summary} \n\n"
        s += f"Entities:\n\n"
        s += "\n\n".join(entity.render, package.entities)
        return s
