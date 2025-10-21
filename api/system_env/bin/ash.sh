#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.System.SystemEnv \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:text \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:text \
    --attribute deleted_at:timestamp_utc_usec \
    --attribute deleted_by:text \
    --attribute locale_code:string \
    --attribute tagging:string \
    --attribute key:string \
    --attribute value:text \

mix ash.codegen create_system_envs
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_system_envs.exs

mkdir -p lib/my_app_web/live/system_envs
touch lib/my_app_web/live/system_envs/form_live.ex
touch lib/my_app_web/live/system_envs/index_live.ex
touch lib/my_app_web/live/system_envs/show_live.ex

mkdir -p test/my_app_web/live/system_envs
touch test/my_app_web/live/system_envs/form_live.ex
touch test/my_app_web/live/system_envs/index_live.ex
touch test/my_app_web/live/system_envs/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/system_envs", SystemEnvs.IndexLive
live "/system_envs/new", SystemEnvs.FormLive, :new
live "/system_envs/:id", SystemEnvs.ShowLive
live "/system_envs/:id/edit", SystemEnvs.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/system/system_env.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
