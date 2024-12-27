def render(attribute):
    return f"  * {attribute.id}: {attribute.type}{render_options(attribute)}{render_example(attribute)}\n\n"

def render_options(attribute):
    options = list(filter(lambda x: x is not None, [
        render_index(attribute), 
        render_nullable(attribute), 
        render_unique(attribute)
    ]))
    if len(options) > 0:
        return ' (' + ', '.join(options) + ')'
    else:
        return ''
    
def render_index(attribute):
    return "index" if attribute.index else None

def render_nullable(attribute):
    return "nullable" if attribute.nullable else None

def render_unique(attribute):
    return "unique" if attribute.unique else None

def render_example(attribute):
    if attribute.example:
        return f" - example: {attribute.example}\n"
    else:
        return ''