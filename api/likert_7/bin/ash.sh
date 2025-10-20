#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.Likert7 \
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
    --attribute likert_7:int \

mix ash.codegen create_likert_7s
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_likert_7s.exs

mkdir -p lib/my_app_web/live/likert_7s
touch lib/my_app_web/live/likert_7s/form_live.ex
touch lib/my_app_web/live/likert_7s/index_live.ex
touch lib/my_app_web/live/likert_7s/show_live.ex

mkdir -p test/my_app_web/live/likert_7s
touch test/my_app_web/live/likert_7s/form_live.ex
touch test/my_app_web/live/likert_7s/index_live.ex
touch test/my_app_web/live/likert_7s/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/likert_7s", Likert7S.IndexLive
live "/likert_7s/new", Likert7S.FormLive, :new
live "/likert_7s/:id", Likert7S.ShowLive
live "/likert_7s/:id/edit", Likert7S.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/likert_7.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
