"""
Entity is the top-level API information.

Example api.yml file:

    my_entity:
        summary: …
        context: …
        attributes: …
        uml: …
"""
  
class Entity:
    def __init__(self, id, summary = None, attributes = None, uml = None):
        self.id = id
        self.summary = summary
        self.attributes = attributes
        self.uml = uml
