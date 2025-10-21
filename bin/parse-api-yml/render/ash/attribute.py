"""
Attribute

<https://hexdocs.pm/ash/Mix.Tasks.Ash.Gen.Resource.html>

Modifiers: primary_key, array, public, sensitive, and required. i.e -a name:string:required
"""

import logging
import re

def render(args, attribute):
    logging.info("attribute.py render(attribute)")
    output = {'script': '', 'extra': ''}
    if attribute.id == "id":
        return output
    if hasattr(attribute, 'belongs_to_model') and attribute.belongs_to_model:
        output['script'] = f"    --relationship belongs_to:{attribute.id}:{args.app_name_title_case}.{args.ddd_name_title_case}.{attribute.belongs_to_model} \\\n"
    elif hasattr(attribute, 'join') and attribute.join:
        output['script'] = f"    --relationship belongs_to:{attribute.id}:{args.app_name_title_case}.{args.ddd_name_title_case}.MyModel \\\n"
    else:
        output['script'] = f"    --attribute {attribute.id}:{render_type(attribute)}{render_modifiers(attribute)} \\\n"
        output['extra'] = render_index(attribute)
    return output

def render_type(attribute):
    type = attribute.type
    match attribute.type:
        case "char":
             type = "string"
        case "timestamp":
             type = "utc_datetime_usec"
        case "url":
             type = "text"
    # Trim any parentheses e.g. from "string(80)" into "string" because of Ash API.
    type = re.sub(r'\(.*', r'', type)
    return type

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
    s = ''
    if hasattr(attribute, 'index') and attribute.index:
        s = f"#     index[:{attribute.id}] \\\n"
        if isinstance(attribute.index, str):
            words = set(attribute.index.split())
            if "unique" in words:
                s+= ", unique: true"
    return s
