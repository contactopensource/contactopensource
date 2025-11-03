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

from functools import partial

class Attribute:

    def __str__(self):
        return f"id: {self.id}, help: {self.help}, type: {self.type}, nullable: {self.nullable}, unique: {self.unique}, index: {self.index}, example: {self.example}, uml: {self.uml}, join: {self.join}"

    @classmethod
    def parse(cls, args, y):
        """
        Parse attributes.

        Args:
            y: YAML of the attributes.
        """
        if y is None:
            return None
        return list(map(partial(Attribute.parse_one, args), y))

    @classmethod
    def parse_one(cls, args, y):
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
                a = Attribute();
                a.id = id;
                a.title = y.get('title', a.id.replace("_", " ").title())
                a.model = y.get('title', a.title.replace(" ", ""))
                a.plural = y.get('plural', a.id + "s")
                a.help = y.get('help', None)
                a.type = y.get('type', None)
                a.unique = y.get('unique', None)
                a.nullable = y.get('nullable', None)
                a.index = y.get('index', None)
                a.example = y.get('example', None)
                a.uml = y.get('uml', None)
                a.join = Attribute.parse_join(a.type)
                a.belongs_to_model =  y.get('belongs_to_model', None)
                return a
            case _:
                raise Exception(y)

    @staticmethod
    def parse_nullable(s):
        if s.__contains__("?"):
            return True
        if s.__contains__("!"):
            return False
        return None

    @staticmethod
    def parse_index(s):
        return s.__contains__("+")

    @staticmethod
    def parse_unique(s):
        return s.__contains__("^")

    @staticmethod
    def parse_join(s):
        if s:
            return s.endswith(".id")
        else:
            return None
