from . import package

class Run:
    
    def render(packages):
        return ''.join(map(Package.render, packages))
