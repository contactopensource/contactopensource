#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Access.AccessPermission \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --relationship belongs_to:access_attribute_id:MyApp.MyDomain.AccessAttribute \
    --relationship belongs_to:access_operation_id:MyApp.MyDomain.AccessOperation \

mix ash.codegen create_access_permissions
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_access_permissions.exs
touch test/my_app/my_domain/access_permission.exs

mkdir -p lib/my_app_web/live/access_permissions
touch lib/my_app_web/live/access_permissions/form_live.ex
touch lib/my_app_web/live/access_permissions/index_live.ex
touch lib/my_app_web/live/access_permissions/show_live.ex

mkdir -p test/my_app_web/live/access_permissions
touch test/my_app_web/live/access_permissions/form_test.exs
touch test/my_app_web/live/access_permissions/index_test.exs
touch test/my_app_web/live/access_permissions/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/access_permissions", AccessPermissions.IndexLive
live "/access_permissions/new", AccessPermissions.FormLive, :new
live "/access_permissions/:id", AccessPermissions.ShowLive
live "/access_permissions/:id/edit", AccessPermissions.FormLive, :edit

If there is a parent, then edit file lib/my_app/access_permission.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/access/access_permission.ex
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
