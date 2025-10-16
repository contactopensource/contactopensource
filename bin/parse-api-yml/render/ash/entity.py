import logging
from . import attribute_group
from snake_case import snake_case

def render(args, entity):
    output = {'script': '', 'extra': ''}
    for x in entity.attribute_groups:
        x = attribute_group.render(args, x)
        output['script'] += x['script']
        output['extra'] += x['extra']

    ### Script ###

    s = "mix ash.gen.resource \\\n"
    s += f"    {args.app_name_title_case}.{entity.module}.{entity.snake_case_plural} \\\n"
    s += "    --conflicts replace \\\n"
    s += "    --default-actions create,read,update,destroy \\\n"
    s += "    --extend postgres \\\n"
    s += "    --uuid-primary-key id \\\n"
    s += output['script']
    s += "\n"
    s += f"mix ash.codegen create_{entity.snake_case_plural}\n"
    s += "mix ash.migrate\n"
    s += "\n"
    s += f"touch priv/repo/migrations/00000000000000_create_{entity.snake_case_plural}.exs\n"
    s += "\n"
    s += f"mkdir -p lib/{args.app_name_snake_case}_web/live/{entity.snake_case_plural}\n"
    s += f"touch lib/{args.app_name_snake_case}_web/live/{entity.snake_case_plural}/form_live.ex\n"
    s += f"touch lib/{args.app_name_snake_case}_web/live/{entity.snake_case_plural}/index_live.ex\n"
    s += f"touch lib/{args.app_name_snake_case}_web/live/{entity.snake_case_plural}/show_live.ex\n"
    s += "\n"
    s += f"mkdir -p test/{args.app_name_snake_case}_web/live/{entity.snake_case_plural}\n"
    s += f"touch test/{args.app_name_snake_case}_web/live/{entity.snake_case_plural}/form_live.ex\n"
    s += f"touch test/{args.app_name_snake_case}_web/live/{entity.snake_case_plural}/index_live.ex\n"
    s += f"touch test/{args.app_name_snake_case}_web/live/{entity.snake_case_plural}/show_live.ex\n"
    s += "\n"
    s += "cat << EOF\n"
    s += f"Edit file lib/{args.app_name_snake_case}_web/router.ex to add live routes:\n"
    s += f"live \"/{entity.snake_case_plural}\", {entity.title_case_plural}.IndexLive\n"
    s += f"live \"/{entity.snake_case_plural}/new\", {entity.title_case_plural}.FormLive, :new\n"
    s += f"live \"/{entity.snake_case_plural}/:id\", {entity.title_case_plural}.ShowLive\n"
    s += f"live \"/{entity.snake_case_plural}/:id/edit\", {entity.title_case_plural}.FormLive, :edit\n"
    s += "EOF\n"

    ### Extra ###

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
    s += "#\n#\n"
    s += "# Change the attributes created_at and updated_at to:\n#\n"
    s += "#   create_timestamp :created_at\n"
    s += "#   update_timestamp :updated_at\n"
    return s
