def render(attribute):
    return f"        {attribute.id}:{render_type(attribute)}{render_index(attribute)} \\\n"

def render_type(attribute):
    if attribute.join:
        return "references"
    # Search for a type with a constraint e.g. "string(1)"
    x = re.search("(string)\((\d+)\)", attribute.type)
    if x:
        # Return a quoted type and curly constraint e.g. "\"string{1}\""
        return "\"{}{{{}}}\"".format(x.group(1), x.group(2))
    return attribute.type

def render_index(attribute):
    return ":index" if attribute.use_index() else ""
