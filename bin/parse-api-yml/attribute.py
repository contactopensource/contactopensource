"""
Attribute is the most-common API information.

Example api.yml file with attribute "Alpha" and attribute "Bravo":

    my_entity:
      …
      attribute_group:
        - alpha:
          - foo:
            help: This is any help text.
            type: string
            index: true
            example: "lorem ipsum"
            uml: …
        - bravo:
          - goo:
            help: This is any help text.
            type: string
            index: true
            example: "lorem ipsum"
            uml: …
"""

class Attribute:
    def __init__(self, id, help,type, index, example, uml = None):
        self.id = id
        self.help = help
        self.type = type
        self.index = index
        self.example = example
        self.uml = uml

    def use_join(self):
        return self.type.__contains__("(id)")

    def use_index(self):
        return self.index or self.use_join()

    def __str__(self):
        return f"id: {self.id}, help: {self.help}, type: {self.type}, index: {self.index}, example: {self.example}, uml: {self.uml}"

    @classmethod
    def parse(cls, y):
        """
        Parse attributes.

        Args:
            y: YAML of the attributes.
        """
        if y is None:
            return None
        return list(map(Attribute.parse_one, y))

    @classmethod
    def parse_one(cls, y):
        """
        Parse attribute id and YAML.

        Args:
            y: YAML of the attribute.
        """
        match y:
            case None:
                return None
            case str():
                return Attribute(
                    y,
                    None
                )    
            case dict():
                (id, y), = y.items()
                return Attribute(
                    id,
                    y.get('help', None), 
                    y.get('type', None), 
                    y.get('index', False), 
                    y.get('example', None), 
                    y.get('uml', None)
                )    
            case _:
                raise Exception(y) 
