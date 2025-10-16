#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.System.system_procs \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_system_procs
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_system_procs.exs

mkdir -p lib/my_app_web/live/system_procs
touch lib/my_app_web/live/system_procs/form_live.ex
touch lib/my_app_web/live/system_procs/index_live.ex
touch lib/my_app_web/live/system_procs/show_live.ex

mkdir -p test/my_app_web/live/system_procs
touch test/my_app_web/live/system_procs/form_live.ex
touch test/my_app_web/live/system_procs/index_live.ex
touch test/my_app_web/live/system_procs/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/system_procs", SystemProcs.IndexLive
live "/system_procs/new", SystemProcs.FormLive, :new
live "/system_procs/:id", SystemProcs.ShowLive
live "/system_procs/:id/edit", SystemProcs.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/system/system_proc.ex
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
