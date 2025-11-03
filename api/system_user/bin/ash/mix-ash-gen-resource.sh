#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.System.SystemUser \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_system_users
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_system_users.exs
touch test/my_app/my_domain/system_user.exs

mkdir -p lib/my_app_web/live/system_users
touch lib/my_app_web/live/system_users/form_live.ex
touch lib/my_app_web/live/system_users/index_live.ex
touch lib/my_app_web/live/system_users/show_live.ex

mkdir -p test/my_app_web/live/system_users
touch test/my_app_web/live/system_users/form_test.exs
touch test/my_app_web/live/system_users/index_test.exs
touch test/my_app_web/live/system_users/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/system_users", SystemUsers.IndexLive
live "/system_users/new", SystemUsers.FormLive, :new
live "/system_users/:id", SystemUsers.ShowLive
live "/system_users/:id/edit", SystemUsers.FormLive, :edit

If there is a parent, then edit file lib/my_app/system_user.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/system/system_user.ex
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
