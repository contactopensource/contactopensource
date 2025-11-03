"""
Attribute

<https://hexdocs.pm/ash/Mix.Tasks.Ash.Gen.Resource.html>

Modifiers: primary_key, array, public, sensitive, and required. i.e -a name:string:required
"""

import logging
import re

def render(args, attribute):
    logging.info("attribute.py render(attribute)")
    s = f"\n    attribute :{attribute.id}, :{render_type(attribute)} do\n"
    if attribute.id == "id":
        s += f"      primary_key? true\n"
    if hasattr(attribute, 'help') and attribute.help != None:
        s += f"      description \"{attribute.help.replace('"', '\\"')}\"\n"
    if hasattr(attribute, 'public') and attribute.public != None:
        s += f"      public? {attribute.public}\n"
    if hasattr(attribute, 'nullable') and attribute.nullable != None:
        s += f"      allow_nil? {attribute.nullable}\n"
    if hasattr(attribute, 'sensitive') and attribute.sensitive != None:
        s += f"      sensitive? {attribute.sensitive}\n"
    s += "    end\n"
    return s

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
