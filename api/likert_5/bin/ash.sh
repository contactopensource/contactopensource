#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.Likert5 \
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
    --attribute likert_5:int \

mix ash.codegen create_likert_5s
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_likert_5s.exs

mkdir -p lib/my_app_web/live/likert_5s
touch lib/my_app_web/live/likert_5s/form_live.ex
touch lib/my_app_web/live/likert_5s/index_live.ex
touch lib/my_app_web/live/likert_5s/show_live.ex

mkdir -p test/my_app_web/live/likert_5s
touch test/my_app_web/live/likert_5s/form_live.ex
touch test/my_app_web/live/likert_5s/index_live.ex
touch test/my_app_web/live/likert_5s/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/likert_5s", Likert5S.IndexLive
live "/likert_5s/new", Likert5S.FormLive, :new
live "/likert_5s/:id", Likert5S.ShowLive
live "/likert_5s/:id/edit", Likert5S.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/likert_5.ex
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
