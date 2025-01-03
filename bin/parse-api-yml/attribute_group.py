"""
AttributeGroup is a documentation convenience, such as for Markdown subheaders, ERD separators, etc.

Example api.yml file with AttributeGroup "alpha" and AttributeGroup "bravo" and AttributeGroup "charlie"

    my_entity:
      …
      attribute_group:
        - alpha:
          …
        - bravo:
          …
        - charlie:
          …
"""

from attribute import Attribute

class AttributeGroup:
    def __init__(self, id, attributes = []):
        self.id = id
        self.attributes = attributes

    def __str__(self):
        return f"id: {self.id}, attributes: {self.attributes}"

    @classmethod
    def parse(cls, y):
        """
        Parse attribute groups.

        Args:
            y: YAML of the attribute groups.
        """
        if y is None:
            return None
        return list(map(AttributeGroup.parse_one, y))

    @classmethod
    def parse_one(cls, y):
        """
        Parse one attribute group, which is a string (i.e. title) or dict (i.e. key-value pair).

        Args:
            y: The yaml of the attribute group.
        """
        # print(f"AttributeGroup parse_one y: {y}")
        match y:
            case None:
                return None
            case str():
                return AttributeGroup(
                    y
                )
            case dict():
                (id, y), = y.items()
                return AttributeGroup(
                    id,
                    Attribute.parse(y)
                )
            case _:
                raise Exception(y)
