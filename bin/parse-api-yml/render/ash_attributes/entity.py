import logging
import os
from . import attribute_group
from pathlib import Path
from snake_case import snake_case
from textwrap import dedent

def render(args, entity):
    s = ''
    for x in entity.attribute_groups:
        s += attribute_group.render(args, x)
        dir = args.dir / "bin" / "ash"
        module = f"{args.app_name_title_case}.{args.ddd_name_title_case}.{entity.model}"

        attributes = dedent(f'''
        defmodule {module}.Attributes do
          use Spark.Dsl.Fragment, of: Ash.Resource

          attributes do
        ''') + s + "\n  end\nend\n"

        actions = dedent(f'''
        defmodule {module}.Actions do
          use Spark.Dsl.Fragment, of: Ash.Resource

          actions do
            defaults [read: :*, destroy: :*, create: :*, update: :*]
          end
          
        end
        ''')

        if args.write:
            with open(dir / "attributes.ex", "w") as f:
                f.write(attributes)
            with open(dir / "actions.ex", "w") as f:
                f.write(actions)
