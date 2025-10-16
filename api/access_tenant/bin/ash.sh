#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Access.access_tenants \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_access_tenants
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_access_tenants.exs

mkdir -p lib/my_app_web/live/access_tenants
touch lib/my_app_web/live/access_tenants/form_live.ex
touch lib/my_app_web/live/access_tenants/index_live.ex
touch lib/my_app_web/live/access_tenants/show_live.ex

mkdir -p test/my_app_web/live/access_tenants
touch test/my_app_web/live/access_tenants/form_live.ex
touch test/my_app_web/live/access_tenants/index_live.ex
touch test/my_app_web/live/access_tenants/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/access_tenants", AccessTenants.IndexLive
live "/access_tenants/new", AccessTenants.FormLive, :new
live "/access_tenants/:id", AccessTenants.ShowLive
live "/access_tenants/:id/edit", AccessTenants.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/access/access_tenant.ex
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
