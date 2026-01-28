#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.measurement.Measurement \
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
    --attribute timestamp_utc_usec:timestamp_utc_usec \
    --relationship belongs_to:measurement_unit_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:measurement_device_id:MyApp.MyDomain.MyModel \
    --attribute value:TODO \

mix ash.codegen create_measurements
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_measurements.exs
touch test/my_app/my_domain/measurement.exs

mkdir -p lib/my_app_web/live/measurements
touch lib/my_app_web/live/measurements/form_live.ex
touch lib/my_app_web/live/measurements/index_live.ex
touch lib/my_app_web/live/measurements/show_live.ex

mkdir -p test/my_app_web/live/measurements
touch test/my_app_web/live/measurements/form_test.exs
touch test/my_app_web/live/measurements/index_test.exs
touch test/my_app_web/live/measurements/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/measurements", Measurements.IndexLive
live "/measurements/new", Measurements.FormLive, :new
live "/measurements/:id", Measurements.ShowLive
live "/measurements/:id/edit", Measurements.FormLive, :edit

If there is a parent, then edit file lib/my_app/measurement.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/measurement/measurement.ex
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
