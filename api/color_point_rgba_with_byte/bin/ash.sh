#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Color.ColorPointRgbaWithByte \
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
    --attribute red:byte \
    --attribute green:byte \
    --attribute blue:byte \
    --attribute alpha:byte \

mix ash.codegen create_color_point_rgba_with_bytes
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_color_point_rgba_with_bytes.exs

mkdir -p lib/my_app_web/live/color_point_rgba_with_bytes
touch lib/my_app_web/live/color_point_rgba_with_bytes/form_live.ex
touch lib/my_app_web/live/color_point_rgba_with_bytes/index_live.ex
touch lib/my_app_web/live/color_point_rgba_with_bytes/show_live.ex

mkdir -p test/my_app_web/live/color_point_rgba_with_bytes
touch test/my_app_web/live/color_point_rgba_with_bytes/form_live.ex
touch test/my_app_web/live/color_point_rgba_with_bytes/index_live.ex
touch test/my_app_web/live/color_point_rgba_with_bytes/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/color_point_rgba_with_bytes", ColorPointRgbaWithBytes.IndexLive
live "/color_point_rgba_with_bytes/new", ColorPointRgbaWithBytes.FormLive, :new
live "/color_point_rgba_with_bytes/:id", ColorPointRgbaWithBytes.ShowLive
live "/color_point_rgba_with_bytes/:id/edit", ColorPointRgbaWithBytes.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/color/color_point_rgba_with_byte.ex
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
