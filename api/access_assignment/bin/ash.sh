#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Access.AccessAssignment \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute access_agent_id:access_agent.id \
    --attribute access_attribute_id:access_attribute.id \

mix ash.codegen create_access_assignment
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/access/access_assignment.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
