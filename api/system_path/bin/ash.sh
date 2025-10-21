#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.System.SystemPath \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_system_paths
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_system_paths.exs

mkdir -p lib/my_app_web/live/system_paths
touch lib/my_app_web/live/system_paths/form_live.ex
touch lib/my_app_web/live/system_paths/index_live.ex
touch lib/my_app_web/live/system_paths/show_live.ex

mkdir -p test/my_app_web/live/system_paths
touch test/my_app_web/live/system_paths/form_live.ex
touch test/my_app_web/live/system_paths/index_live.ex
touch test/my_app_web/live/system_paths/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/system_paths", SystemPaths.IndexLive
live "/system_paths/new", SystemPaths.FormLive, :new
live "/system_paths/:id", SystemPaths.ShowLive
live "/system_paths/:id/edit", SystemPaths.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/system/system_path.ex
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
