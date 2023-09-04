class Attribute:
    def __init__(self, id, type, index, example, uml = None):
        self.id = id
        self.type = type
        self.index = index
        self.example = example
        self.uml = uml

    def use_join(self):
        return self.type.__contains__("(id)")

    def use_index(self):
        return self.index or self.use_join()
