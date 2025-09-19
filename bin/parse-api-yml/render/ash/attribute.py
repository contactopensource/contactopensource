"""
Attribute

<https://hexdocs.pm/ash/Mix.Tasks.Ash.Gen.Resource.html>

Modifiers: primary_key, array, public, sensitive, and required. i.e -a name:string:required
"""

import re

def render(attribute):
    if attribute.id == "id":
        return ""
    return f"    --attribute {attribute.id}:{render_type(attribute)}{render_modifiers(attribute)} \\\n"

def render_type(attribute):
    if hasattr(attribute, 'join') and attribute.join:
        return "references"
    attribute.type = re.sub(r'\(.*', r'', attribute.type)
    return attribute.type

def render_modifiers(attribute):
    s = ""
    if hasattr(attribute, 'primary_key') and attribute.primary_key:
        s += ":primary_key" 
    if hasattr(attribute, 'array') and attribute.array:
        s += ":array" 
    if hasattr(attribute, 'public') and attribute.public:
        s += ":public" 
    if hasattr(attribute, 'sensitive') and attribute.sensitive:
        s += ":sensitive" 
    if hasattr(attribute, 'sensitive') and attribute.sensitive:
        s += ":required" 
    return s
