import re

def render(args, attribute):
    return f"        {attribute.id}:{render_type(attribute)}{render_nullable(attribute)}{render_unique(attribute)} \\\n"

def render_id(attribute):
    if attribute.id.endswith("_id") and attribute.type.endswith(".id"):
        return attribute.id[:-3]
    return attribute.id

def render_type(attribute):
    if attribute.id.endswith("_id") and attribute.type.endswith(".id"):
        if attribute.id[:-3] == attribute.type[:-3]:
            return "references"
        return "references:" + attribute.type[:-3]
    # Search for a type with a constraint e.g. "string(1)"
    x = re.search("string\((\d+)\)", attribute.type)
    if x:
        # Return a quoted type and curly constraint e.g. "\"string{1}\""
        # TODO: return CHECK(length(VALUE)=3) or CHECK(VALUE ~ '^[[:alpha:]]{3}$') or similar.
        return "\"{}{{{}}}\"".format(x.group(1), x.group(2))
    return attribute.type

def render_nullable(attribute):
    return ''
    #TODO
    # if attribute.nullable != True:
    #     return ' NOT NULL'
    # else:
    #     return ''

def render_unique(attribute):
    return ''
    #TODO
    # if attribute.unique:
    #     return ' UNIQUE'
    # else:
    #     return ''
