def render(attribute):
    return f"        {attribute.id} = models.{render_type(attribute)}(\"{attribute.help}\")\n"

attribute_type_to_attribute = {
  "auto": "AutoAttribute",
  "binary": "BinaryAttribute",
  "char": "CharAttribute",
  "date": "DateAttribute",
  "datetime": "DateTimeAttribute",
  "file": "FileAttribute",
  "float": "FloatAttribute",
  "image": "ImageAttribute",
  "integer": "IntegerAttribute",
  "key": "ForeignKey",
  "positive_big_integer": "PositiveBigIntegerAttribute",
  "small_integer": "SmallIntegerAttribute",
  "string": "TextAttribute",
  "text": "TextAttribute",
  "url": "URLAttribute",
  "uuid": "UUIDAttribute",
  "uuid1": "UUIDAttribute",
  "uuid2": "UUIDAttribute",
  "uuid3": "UUIDAttribute",
  "uuid4": "UUIDAttribute",
  "uuid5": "UUIDAttribute",
  "uuid6": "UUIDAttribute",
  "uuid7": "UUIDAttribute",
  "zid": "UUIDAttribute",
}

def render_type(attribute):
    if attribute.join:
        return f"ForeignKey(\"{attribute.help}\", {attribute.model}, on_delete=models.CASCADE)"
    return attribute_type_to_attribute.get(attribute.type, "UnknownAttribute")

def render_index(attribute):
    return ":index" if attribute.index else None
