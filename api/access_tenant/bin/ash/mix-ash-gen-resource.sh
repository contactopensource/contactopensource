#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Access.AccessTenant \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_access_tenants
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_access_tenants.exs
touch test/my_app/my_domain/access_tenant.exs

mkdir -p lib/my_app_web/live/access_tenants
touch lib/my_app_web/live/access_tenants/form_live.ex
touch lib/my_app_web/live/access_tenants/index_live.ex
touch lib/my_app_web/live/access_tenants/show_live.ex

mkdir -p test/my_app_web/live/access_tenants
touch test/my_app_web/live/access_tenants/form_test.exs
touch test/my_app_web/live/access_tenants/index_test.exs
touch test/my_app_web/live/access_tenants/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/access_tenants", AccessTenants.IndexLive
live "/access_tenants/new", AccessTenants.FormLive, :new
live "/access_tenants/:id", AccessTenants.ShowLive
live "/access_tenants/:id/edit", AccessTenants.FormLive, :edit

If there is a parent, then edit file lib/my_app/access_tenant.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
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
