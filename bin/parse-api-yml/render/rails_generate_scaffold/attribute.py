import re

def render(attribute):
    # If the attribute is the primary key id, then we can skip it,
    # because the Rails generator does this automatically for us.
    if attribute.id == "id":
        return ""
    return f"        {attribute.id}:{render_type(attribute)}{render_index(attribute)} \\\n"

def render_type(attribute):
    if attribute.join:
        return "references"
    if attribute.type == "email":
        return "text"
    if attribute.type == "url":
        return "text"
    if attribute.type.endswith(".id"):
        return "references"
    # Search for a type with a constraint e.g. "string(1)"
    x = re.search("(string)\((\d+)\)", attribute.type)
    if x:
        # Return a quoted type and curly constraint e.g. "\"string{1}\""
        # TODO: return CHECK(length(VALUE)=3) or CHECK(VALUE ~ '^[[:alpha:]]{3}$') or similar.
        return "\"{}{{{}}}\"".format(x.group(1), x.group(2))
    return attribute.type

def render_index(attribute):
    return ":index" if attribute.index else ""
