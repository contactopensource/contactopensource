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
from itertools import chain
from attribute_group import AttributeGroup

class Entity:
    def __init__(self, id, summary, module, model, table, uml = None, attribute_groups = []):
        self.id = id
        self.summary = summary
        self.module = module
        self.model = model
        self.table = table
        self.uml = uml
        self.attribute_groups = attribute_groups

    def attributes(self):
        return list(chain(map(lambda x: x.attributes, self.attribute_groups)))
    
    def __str__(self):
        return f"id: {self.id}, summary: {self.summary}, module: {self.module}, model: {self.model}, table: {self.table}, uml: {self.uml}, attribute_groups: {self.attribute_groups}"

    @classmethod
    def parse(cls, y):
        """
        Parse entities.

        Args:
            y: YAML of the entities.
        """
        if y is None:
            return None
        return list(map(Entity.parse_one, y.items()))

    @classmethod
    def parse_one(cls, y):
        """
        Parse entity key-value pair.

        Args:
            y: YAML of the entity.
        """
        if y is None:
            return None
        (id, y) = y
        return Entity(
            id, 
            y.get('summary', None), 
            y.get('module', None),
            y.get('model', None),
            y.get('table', None), 
            y.get('uml', None),
            AttributeGroup.parse(y.get('attribute_groups', [])),
        )
