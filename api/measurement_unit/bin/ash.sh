#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.measurement.MeasurementUnit \
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
    --attribute name:text \
    --attribute symbol:text \
    --relationship belongs_to:measurement_system_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:numerator:MyApp.MyDomain.MyModel \
    --relationship belongs_to:denominator:MyApp.MyDomain.MyModel \

mix ash.codegen create_measurement_units
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_measurement_units.exs

mkdir -p lib/my_app_web/live/measurement_units
touch lib/my_app_web/live/measurement_units/form_live.ex
touch lib/my_app_web/live/measurement_units/index_live.ex
touch lib/my_app_web/live/measurement_units/show_live.ex

mkdir -p test/my_app_web/live/measurement_units
touch test/my_app_web/live/measurement_units/form_live.ex
touch test/my_app_web/live/measurement_units/index_live.ex
touch test/my_app_web/live/measurement_units/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/measurement_units", MeasurementUnits.IndexLive
live "/measurement_units/new", MeasurementUnits.FormLive, :new
live "/measurement_units/:id", MeasurementUnits.ShowLive
live "/measurement_units/:id/edit", MeasurementUnits.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/measurement/measurement_unit.ex
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
