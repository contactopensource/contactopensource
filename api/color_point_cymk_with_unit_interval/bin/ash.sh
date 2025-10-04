#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Color.ColorPointCYMKWithUnitInterval \
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
    --attribute cyan:unit_interval \
    --attribute yellow:unit_interval \
    --attribute magenta:unit_interval \
    --attribute black:unit_interval \

mix ash.codegen create_color_point_cymk_as_unit_interval
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/color/color_point_cymk_as_unit_interval.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
