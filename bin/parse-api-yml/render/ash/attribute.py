"""
Attribute

<https://hexdocs.pm/ash/Mix.Tasks.Ash.Gen.Resource.html>

Modifiers: primary_key, array, public, sensitive, and required. i.e -a name:string:required
"""

import re

def render(attribute):
    return f"    --attribute {attribute.id}:{render_type(attribute)}{render_modifiers(attribute)} \\\n"

def render_type(attribute):
    if attribute.join:
        return "references"
    return attribute.type # TODO cut constraint

def render_modifiers(attribute):
    s = ""
    if attribute.primary_key:
        s += ":primary_key" 
    if attribute.array:
        s += ":array" 
    if attribute.public:
        s += ":public" 
    if attribute.sensitive:
        s += ":sensitive" 
    if attribute.sensitive:
        s += ":required" 
    return s
