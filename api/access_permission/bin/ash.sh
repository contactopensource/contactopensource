#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Access.access_permissions \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute access_attribute_it:access_attribute.id \
    --attribute access_operation_id:access_operation.id \

mix ash.codegen create_access_permissions
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_access_permissions.exs

mkdir -p lib/my_app_web/live/access_permissions
touch lib/my_app_web/live/access_permissions/form_live.ex
touch lib/my_app_web/live/access_permissions/index_live.ex
touch lib/my_app_web/live/access_permissions/show_live.ex

mkdir -p test/my_app_web/live/access_permissions
touch test/my_app_web/live/access_permissions/form_live.ex
touch test/my_app_web/live/access_permissions/index_live.ex
touch test/my_app_web/live/access_permissions/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/access_permissions", AccessPermissions.IndexLive
live "/access_permissions/new", AccessPermissions.FormLive, :new
live "/access_permissions/:id", AccessPermissions.ShowLive
live "/access_permissions/:id/edit", AccessPermissions.FormLive, :edit
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
