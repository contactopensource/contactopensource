"""
Attribute is the most-common API information.

Example api.yml file with attribute "Alpha" and attribute "Bravo":

    my_entity:
        summary: …
        context: …
        attributes:
            Alpha:
                key:
                    type: string
                    index: true
                    example: "lorem ipsum"
                    uml: …
            Bravo:
                key:
                    type: string
                    index: true
                    example: "lorem ipsum"
                    uml: …
"""

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

    def __str__(self):
        return f"id: {self.id}, type: {self.type}, index: {self.index}, example: {self.example}, uml: {self.uml}"
