def render(args, attribute):
    return f"  {attribute.id} : {attribute.type}{render_options(attribute)}\n"

def render_options(attribute):
    options = list(filter(lambda x: x is not None, [
        render_index(attribute),
        render_key(attribute),
        #render_nullable(attribute),
        render_unique(attribute)
    ]))
    if len(options) > 0:
        return ' ' + ' '.join(options)
    else:
        return ''

def render_index(attribute):
    return "⚡" if (attribute.index and not attribute.join) else None

def render_key(attribute):
    return "🔑" if (attribute.id.endswith("_id") and attribute.type.endswith(".id")) else None

def render_nullable(attribute):
    match attribute.nullable:
        case True:
            return "?"
        case False:
            return "!"
        case _:
            return None

def render_unique(attribute):
    return "➀" if attribute.unique else None

