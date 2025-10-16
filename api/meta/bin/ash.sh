#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.metas \
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

mix ash.codegen create_metas
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_metas.exs

mkdir -p lib/my_app_web/live/metas
touch lib/my_app_web/live/metas/form_live.ex
touch lib/my_app_web/live/metas/index_live.ex
touch lib/my_app_web/live/metas/show_live.ex

mkdir -p test/my_app_web/live/metas
touch test/my_app_web/live/metas/form_live.ex
touch test/my_app_web/live/metas/index_live.ex
touch test/my_app_web/live/metas/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/metas", Metas.IndexLive
live "/metas/new", Metas.FormLive, :new
live "/metas/:id", Metas.ShowLive
live "/metas/:id/edit", Metas.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/meta.ex
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
