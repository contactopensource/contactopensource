#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Basics.Tag \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute start:timestamp_utc_usec_utc \
    --attribute stop:timestamp_utc_usec_utc \
    --attribute duration_as_seconds:count \

mix ash.codegen create_tags
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_tags.exs

mkdir -p lib/my_app_web/live/tags
touch lib/my_app_web/live/tags/form_live.ex
touch lib/my_app_web/live/tags/index_live.ex
touch lib/my_app_web/live/tags/show_live.ex

mkdir -p test/my_app_web/live/tags
touch test/my_app_web/live/tags/form_live.ex
touch test/my_app_web/live/tags/index_live.ex
touch test/my_app_web/live/tags/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/tags", Tags.IndexLive
live "/tags/new", Tags.FormLive, :new
live "/tags/:id", Tags.ShowLive
live "/tags/:id/edit", Tags.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/basics/tag.ex
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
