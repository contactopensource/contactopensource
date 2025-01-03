class Package:
    def __init__(self, id, summary, entities, uml = None):
        self.id = id
        self.summary = summary
        self.entities = entities
        self.uml = uml

    def __str__(self):
        return f"id: {self.id}, summary: {self.summary}, entities: {self.entities}, uml: {self.uml}"

    def parse(cls, y):
        """
        Parse packages.

        Args:
            y: the packages yaml.
        """
        if y is None:
            return None
        return list(map(parse_one, y.items()))

    def parse_one(cls, y):
        """
        Parse package key-value pair.

        Args:
            kv: the package key-value pair.
        """
        if y is None:
            return None
        return parse_id(*kv)

    def parse_id(cls, id, y):
        """
        Parse package.

        Args:
            id: the package id.
            y: the package yaml.
        """
        if y is None:
            return None
        return Package(
            id,
            y.get('summary', None)
        )
