class Package:
    def __init__(self, id, summary, entities, uml = None):
        self.id = id
        self.summary = summary
        self.entities = entities
        self.uml = uml

    def __str__(self):
        return f"id: {self.id}, summary: {self.summary}, entities: {self.entities}, uml: {self.uml}"
