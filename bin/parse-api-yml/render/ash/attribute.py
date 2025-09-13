import re

def render(attribute):
    return f"    --attribute {attribute.id}:{render_type(attribute)}{render_quality(attribute)} \\\n"

def render_type(attribute):
    if attribute.join:
        return "references"
    return attribute.type # TODO cut constraint

def render_quality(attribute):
    if attribute.array:
        return ":array" 
    return None
