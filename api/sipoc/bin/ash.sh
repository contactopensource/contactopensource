#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.sipocs \
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
    --attribute suppliers_as_url:text \
    --attribute suppliers_as_markdown:markdown \
    --attribute inputs_as_url:text \
    --attribute inputs_as_markdown:markdown \
    --attribute processes_as_url:text \
    --attribute processes_as_markdown:markdown \
    --attribute outputs_as_url:text \
    --attribute outputs_as_markdown:markdown \
    --attribute customers_as_url:text \
    --attribute customers_as_markdown:markdown \

mix ash.codegen create_sipocs
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_sipocs.exs

mkdir -p lib/my_app_web/live/sipocs
touch lib/my_app_web/live/sipocs/form_live.ex
touch lib/my_app_web/live/sipocs/index_live.ex
touch lib/my_app_web/live/sipocs/show_live.ex

mkdir -p test/my_app_web/live/sipocs
touch test/my_app_web/live/sipocs/form_live.ex
touch test/my_app_web/live/sipocs/index_live.ex
touch test/my_app_web/live/sipocs/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/sipocs", Sipocs.IndexLive
live "/sipocs/new", Sipocs.FormLive, :new
live "/sipocs/:id", Sipocs.ShowLive
live "/sipocs/:id/edit", Sipocs.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/sipoc.ex
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
