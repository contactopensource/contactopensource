#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.User \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_users
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_users.exs

mkdir -p lib/my_app_web/live/users
touch lib/my_app_web/live/users/form_live.ex
touch lib/my_app_web/live/users/index_live.ex
touch lib/my_app_web/live/users/show_live.ex

mkdir -p test/my_app_web/live/users
touch test/my_app_web/live/users/form_live.ex
touch test/my_app_web/live/users/index_live.ex
touch test/my_app_web/live/users/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/users", Users.IndexLive
live "/users/new", Users.FormLive, :new
live "/users/:id", Users.ShowLive
live "/users/:id/edit", Users.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/user.ex
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
