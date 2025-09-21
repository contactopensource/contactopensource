"""
Attribute

<https://hexdocs.pm/ash/Mix.Tasks.Ash.Gen.Resource.html>

Modifiers: primary_key, array, public, sensitive, and required. i.e -a name:string:required
"""

import logging
import re

def render(attribute):
    logging.info("attribute.py render(attribute)")
    output = {'script': '', 'extra': ''}
    if attribute.id == "id":
        return output
    output['script'] = f"    --attribute {attribute.id}:{render_type(attribute)}{render_modifiers(attribute)} \\\n"
    output['extra'] = render_index(attribute)
    return output

def render_type(attribute):
    if hasattr(attribute, 'join') and attribute.join:
        return "references"
    # Adjust as needed for Ash API; ideally remove these if/when Ash improves.
    match attribute.type:
        case "char":
             attribute.type = "string"
        case "timestamp_utc_usec":
             attribute.type = "timestamp"
    # Trim any parentheses e.g. from "string(80)" into "string" because of Ash API.
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
    if hasattr(attribute, 'required') and attribute.sensitive:
        s += ":required" 
    return s

def render_index(attribute):
    if hasattr(attribute, 'index') and attribute.index:
        return f"#     index[:{attribute.id}]\n"
    return ''
