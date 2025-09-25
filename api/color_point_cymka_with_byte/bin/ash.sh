#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Color.Color Point CYMKA With Byte \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute sign:string \
    --attribute lock_version:integer \
    --attribute created_at:timestamp \
    --attribute created_by:url \
    --attribute updated_at:timestamp \
    --attribute updated_by:url \
    --attribute deleted_at:timestamp \
    --attribute deleted_by:url \
    --attribute locale_id:locale.id \
    --attribute cyan:byte \
    --attribute yellow:byte \
    --attribute magenta:byte \
    --attribute black:byte \
    --attribute alpha:byte \

mix ash.codegen create_color_point_cymka_as_byte
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/color/color_point_cymka_as_byte.ex
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
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
