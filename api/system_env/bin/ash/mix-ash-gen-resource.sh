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
    --attribute retired_at:timestamp_utc_usec \
    --attribute retired_by:text \
    --attribute locale_code:string \
    --attribute tagging:string \
    --attribute key:string \
    --attribute value:text \

mix ash.codegen create_system_envs
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_system_envs.exs
touch test/my_app/my_domain/system_env.exs

mkdir -p lib/my_app_web/live/system_envs
touch lib/my_app_web/live/system_envs/form_live.ex
touch lib/my_app_web/live/system_envs/index_live.ex
touch lib/my_app_web/live/system_envs/show_live.ex

mkdir -p test/my_app_web/live/system_envs
touch test/my_app_web/live/system_envs/form_test.exs
touch test/my_app_web/live/system_envs/index_test.exs
touch test/my_app_web/live/system_envs/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/system_envs", SystemEnvs.IndexLive
live "/system_envs/new", SystemEnvs.FormLive, :new
live "/system_envs/:id", SystemEnvs.ShowLive
live "/system_envs/:id/edit", SystemEnvs.FormLive, :edit

If there is a parent, then edit file lib/my_app/system_env.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
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
#     index[:created_at] \
#     index[:created_by] \
#     index[:updated_at] \
#     index[:updated_by] \
#     index[:retired_at] \
#     index[:retired_by] \
#     index[:locale_code] \
#     index[:tagging] \
#     index[:key] \
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
