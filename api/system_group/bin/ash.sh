#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.System.SystemGroup \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_system_groups
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_system_groups.exs

mkdir -p lib/my_app_web/live/system_groups
touch lib/my_app_web/live/system_groups/form_live.ex
touch lib/my_app_web/live/system_groups/index_live.ex
touch lib/my_app_web/live/system_groups/show_live.ex

mkdir -p test/my_app_web/live/system_groups
touch test/my_app_web/live/system_groups/form_live.ex
touch test/my_app_web/live/system_groups/index_live.ex
touch test/my_app_web/live/system_groups/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/system_groups", SystemGroups.IndexLive
live "/system_groups/new", SystemGroups.FormLive, :new
live "/system_groups/:id", SystemGroups.ShowLive
live "/system_groups/:id/edit", SystemGroups.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/system/system_group.ex
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
