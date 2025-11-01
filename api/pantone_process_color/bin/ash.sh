#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.PantoneProcessColor \
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
    --attribute name:string \
    --attribute code:string \
    --attribute stock:string \

mix ash.codegen create_pantone_process_colors
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_pantone_process_colors.exs

mkdir -p lib/my_app_web/live/pantone_process_colors
touch lib/my_app_web/live/pantone_process_colors/form_live.ex
touch lib/my_app_web/live/pantone_process_colors/index_live.ex
touch lib/my_app_web/live/pantone_process_colors/show_live.ex

mkdir -p test/my_app_web/live/pantone_process_colors
touch test/my_app_web/live/pantone_process_colors/form_live.ex
touch test/my_app_web/live/pantone_process_colors/index_live.ex
touch test/my_app_web/live/pantone_process_colors/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/pantone_process_colors", PantoneProcessColors.IndexLive
live "/pantone_process_colors/new", PantoneProcessColors.FormLive, :new
live "/pantone_process_colors/:id", PantoneProcessColors.ShowLive
live "/pantone_process_colors/:id/edit", PantoneProcessColors.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/pantone_process_color.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
