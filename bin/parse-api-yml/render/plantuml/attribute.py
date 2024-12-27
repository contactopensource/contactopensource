def render(attribute):
    if attribute is None:
        return ''
    return f"{attribute.id}"

def render_null(attribute):
    match attribute.render_null():
        case True:
            return "true"
        case False:
            return "false"
        case _:
            return "_"
    
def render_unique(attribute):
    match attribute.render_unique():
        case True:
            return "true"
        case False:
            return "false"
        case _:
            return "_"


def render(attribute):
    return f"  {attribute.id} : {attribute.type}{render_index(attribute)}\n"

def render_index(attribute):
    return "+" if attribute.index else ""
