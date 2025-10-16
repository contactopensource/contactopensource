"""
Entity is the top-level API information.

Example api.yml file:

    my_entity:
      summary: …
      module: …
      model: …
      table: …
      uml: …
      attribute_groups: …
"""

#from functools import reduce
from functools import partial
from itertools import chain
from attribute_group import AttributeGroup

class Entity:
    def __init__(self, id):
        self.id = id
        self.snake_case_singular = None
        self.snake_case_plural = None
        self.title_case_singular = None
        self.title_case_plural = None
        self.summary = None
        self.module = None
        self.model = None
        self.associations = None
        self.table = None
        self.uml = None
        self.attribute_groups = None

    def attributes(self):
        return list(chain(map(lambda x: x.attributes, self.attribute_groups)))

    def __str__(self):
        return f"id: {self.id}, snake_case_singular: {self.snake_case_singular}, snake_case_plural: {self.snake_case_plural}, summary: {self.summary}, module: {self.module}, model: {self.model}, table: {self.table}, uml: {self.uml}, attribute_groups: {self.attribute_groups}"

    @classmethod
    def parse(cls, args, y):
        """
        Parse entities.

        Args:
            y: YAML of the entities.
        """
        if y is None:
            return None
        return list(map(partial(Entity.parse_one, args), y.items()))

    @classmethod
    def parse_one(cls, args, y):
        """
        Parse entity key-value pair.

        Args:
            y: YAML of the entity.
        """
        if y is None:
            return None
        (id, y) = y
        entity = Entity(id)
        entity.snake_case_singular = y.get('snake_case_singular', id)
        entity.snake_case_plural = y.get('snake_case_plural', f"{id}s")
        entity.title_case_singular = y.get('title_case_singular', entity.snake_case_singular.title().replace('_',''))
        entity.title_case_plural = y.get('title_case_plural',  entity.snake_case_plural.title().replace('_',''))
        entity.summary = y.get('summary', None)
        entity.module = y.get('module', None)
        entity.model = y.get('model', None)
        entity.associations = y.get('associations', None)
        entity.table = y.get('table', None)
        entity.uml = y.get('uml', None)
        entity.attribute_groups = AttributeGroup.parse(args, y.get('attribute_groups', []))
        return entity
