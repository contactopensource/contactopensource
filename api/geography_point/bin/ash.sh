#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.GeographyPoint \
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
    --attribute latitude_as_decimal_degrees:decimal_degrees \
    --attribute longitude_as_decimal_degrees:decimal_degrees \
    --attribute altitude_agl_as_meters:meters \
    --attribute altitude_msl_as_meters:meters \
    --attribute elevation_agl_as_meters:meters \
    --attribute elevation_msl_as_meters:meters \

mix ash.codegen create_geography_points
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_geography_points.exs

mkdir -p lib/my_app_web/live/geography_points
touch lib/my_app_web/live/geography_points/form_live.ex
touch lib/my_app_web/live/geography_points/index_live.ex
touch lib/my_app_web/live/geography_points/show_live.ex

mkdir -p test/my_app_web/live/geography_points
touch test/my_app_web/live/geography_points/form_live.ex
touch test/my_app_web/live/geography_points/index_live.ex
touch test/my_app_web/live/geography_points/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/geography_points", GeographyPoints.IndexLive
live "/geography_points/new", GeographyPoints.FormLive, :new
live "/geography_points/:id", GeographyPoints.ShowLive
live "/geography_points/:id/edit", GeographyPoints.FormLive, :edit
EOF
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
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
