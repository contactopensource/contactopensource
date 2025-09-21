#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Color.ColorPointRGBAWithByte \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute sign:char \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:url \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:url \
    --attribute deleted_at:timestamp_utc_usec \
    --attribute deleted_by:url \
    --attribute locale_id:locale.id \
    --attribute red:byte \
    --attribute green:byte \
    --attribute blue:byte \
    --attribute alpha:byte \

mix ash.codegen create_color_point_rgba_with_byte
mix ash.migrate

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
#     index[:sign]
#     index[:created_at]
#     index[:created_by]
#     index[:updated_at]
#     index[:updated_by]
#     index[:deleted_at]
#     index[:deleted_by]
#     index[:locale_id]
