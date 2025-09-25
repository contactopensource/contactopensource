#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Color.ColorNameKit \
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
    --attribute hex:hexdigit \
    --attribute html_color_name:text \
    --attribute x11_color_name:text \
    --attribute color_naming_system_name:text \
    --attribute pantone_process_color_name:text \

mix ash.codegen create_color_name_kit
mix ash.migrate

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
