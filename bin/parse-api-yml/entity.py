"""
Entity is the top-level API information.

Example api.yml file:

    my_entity:
        summary: …
        context: …
        uml: …
        attributes: …
"""
  
class Entity:
    def __init__(self, id, summary = None, attributes = None, uml = None):
        self.id = id
        self.summary = summary
        self.uml = uml
        self.attributes = attributes

    def __str__(self):
        return f"id: {self.id}, summary: {self.summary}, attributes: {self.attributes}, uml: {self.uml}"
