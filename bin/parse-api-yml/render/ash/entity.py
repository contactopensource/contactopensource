import logging
from . import attribute_group
from snake_case import snake_case

def render(entity):
    output = {'script': '', 'extra': ''}
    for x in entity.attribute_groups:
        x = attribute_group.render(x)
        output['script'] += x['script']
        output['extra'] += x['extra']
    s = "mix ash.gen.resource \\\n"
    s += f"    MyApp.{entity.module}.{entity.model} \\\n"
    s += "    --conflicts replace \\\n"
    s += "    --default-actions create,read,update,destroy \\\n"
    s += "    --extend postgres \\\n"
    s += "    --uuid-primary-key id \\\n"
    s += output['script']
    s += "\n"
    s += f"mix ash.codegen create_{entity.id}\n"
    s += "mix ash.migrate\n"
    s += "\n"
    if output['extra'] != "":
        if entity.module == None:
            domain = "my_domain"
        else:
            domain = snake_case(entity.module)
        s += "### Extra ###\n#\n"
        s += f"# Edit file lib/my_app/{domain}/{entity.id}.ex\n#\n"
        s += "# Find this section:\n#\n"
        s += "#   postgres do\n"
        s += "#     table …\n"
        s += "#     repo …\n#\n"
        s += "# Add this:\n#\n"
        s += output['extra']
    return s
