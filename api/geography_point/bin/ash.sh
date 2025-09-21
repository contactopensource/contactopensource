#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.GeographyPoint \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute sign:char \
    --attribute lock_version:integer \
    --attribute created_at:timestamp \
    --attribute created_by:url \
    --attribute updated_at:timestamp \
    --attribute updated_by:url \
    --attribute deleted_at:timestamp \
    --attribute deleted_by:url \
    --attribute locale_id:locale.id \
    --attribute latitude_as_decimal_degrees:decimal_degrees \
    --attribute longitude_as_decimal_degrees:decimal_degrees \
    --attribute altitude_agl_as_meters:meters \
    --attribute altitude_msl_as_meters:meters \
    --attribute elevation_agl_as_meters:meters \
    --attribute elevation_msl_as_meters:meters \

mix ash.codegen create_geography_point
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/my_domain/geography_point.ex
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
