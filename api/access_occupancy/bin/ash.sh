#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Access.AccessOccupancy \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --relationship belongs_to:access_tenant_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:access_agent_id:MyApp.MyDomain.MyModel \

mix ash.codegen create_access_occupancies
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_access_occupancies.exs

mkdir -p lib/my_app_web/live/access_occupancies
touch lib/my_app_web/live/access_occupancies/form_live.ex
touch lib/my_app_web/live/access_occupancies/index_live.ex
touch lib/my_app_web/live/access_occupancies/show_live.ex

mkdir -p test/my_app_web/live/access_occupancies
touch test/my_app_web/live/access_occupancies/form_live.ex
touch test/my_app_web/live/access_occupancies/index_live.ex
touch test/my_app_web/live/access_occupancies/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/access_occupancies", AccessOccupancies.IndexLive
live "/access_occupancies/new", AccessOccupancies.FormLive, :new
live "/access_occupancies/:id", AccessOccupancies.ShowLive
live "/access_occupancies/:id/edit", AccessOccupancies.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/access/access_occupancy.ex
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
