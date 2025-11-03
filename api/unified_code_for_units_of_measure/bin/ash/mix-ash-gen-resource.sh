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
    --attribute category:text \
    --attribute synonyms:text \
    --attribute loinc_property:text \
    --attribute guidance:text \
    --attribute source:text \

mix ash.codegen create_measurement_units
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_measurement_units.exs
touch test/my_app/my_domain/measurement_unit.exs

mkdir -p lib/my_app_web/live/measurement_units
touch lib/my_app_web/live/measurement_units/form_live.ex
touch lib/my_app_web/live/measurement_units/index_live.ex
touch lib/my_app_web/live/measurement_units/show_live.ex

mkdir -p test/my_app_web/live/measurement_units
touch test/my_app_web/live/measurement_units/form_test.exs
touch test/my_app_web/live/measurement_units/index_test.exs
touch test/my_app_web/live/measurement_units/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/measurement_units", MeasurementUnits.IndexLive
live "/measurement_units/new", MeasurementUnits.FormLive, :new
live "/measurement_units/:id", MeasurementUnits.ShowLive
live "/measurement_units/:id/edit", MeasurementUnits.FormLive, :edit

If there is a parent, then edit file lib/my_app/measurement_unit.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
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
#     index[:created_at] \
#     index[:created_by] \
#     index[:updated_at] \
#     index[:updated_by] \
#     index[:retired_at] \
#     index[:retired_by] \
#     index[:locale_code] \
#     index[:tagging] \
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
