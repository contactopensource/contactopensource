#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Color.color_name_kits \
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
    --attribute hex:hexdigit \
    --attribute html_color_name:text \
    --attribute x11_color_name:text \
    --attribute color_naming_system_name:text \
    --attribute pantone_process_color_name:text \

mix ash.codegen create_color_name_kits
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_color_name_kits.exs

mkdir -p lib/my_app_web/live/color_name_kits
touch lib/my_app_web/live/color_name_kits/form_live.ex
touch lib/my_app_web/live/color_name_kits/index_live.ex
touch lib/my_app_web/live/color_name_kits/show_live.ex

mkdir -p test/my_app_web/live/color_name_kits
touch test/my_app_web/live/color_name_kits/form_live.ex
touch test/my_app_web/live/color_name_kits/index_live.ex
touch test/my_app_web/live/color_name_kits/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/color_name_kits", ColorNameKits.IndexLive
live "/color_name_kits/new", ColorNameKits.FormLive, :new
live "/color_name_kits/:id", ColorNameKits.ShowLive
live "/color_name_kits/:id/edit", ColorNameKits.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/color/color_name_kit.ex
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
