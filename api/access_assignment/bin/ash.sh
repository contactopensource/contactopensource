#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Access.access_assignments \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute access_agent_id:access_agent.id \
    --attribute access_attribute_id:access_attribute.id \

mix ash.codegen create_access_assignments
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_access_assignments.exs

mkdir -p lib/my_app_web/live/access_assignments
touch lib/my_app_web/live/access_assignments/form_live.ex
touch lib/my_app_web/live/access_assignments/index_live.ex
touch lib/my_app_web/live/access_assignments/show_live.ex

mkdir -p test/my_app_web/live/access_assignments
touch test/my_app_web/live/access_assignments/form_live.ex
touch test/my_app_web/live/access_assignments/index_live.ex
touch test/my_app_web/live/access_assignments/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/access_assignments", AccessAssignments.IndexLive
live "/access_assignments/new", AccessAssignments.FormLive, :new
live "/access_assignments/:id", AccessAssignments.ShowLive
live "/access_assignments/:id/edit", AccessAssignments.FormLive, :edit
EOF
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
