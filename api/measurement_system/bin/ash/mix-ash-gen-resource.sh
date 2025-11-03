#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.MeasurementSystem \
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
    --attribute key:string \
    --attribute formal_name:string \

mix ash.codegen create_measurement_systems
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_measurement_systems.exs
touch test/my_app/my_domain/measurement_system.exs

mkdir -p lib/my_app_web/live/measurement_systems
touch lib/my_app_web/live/measurement_systems/form_live.ex
touch lib/my_app_web/live/measurement_systems/index_live.ex
touch lib/my_app_web/live/measurement_systems/show_live.ex

mkdir -p test/my_app_web/live/measurement_systems
touch test/my_app_web/live/measurement_systems/form_test.exs
touch test/my_app_web/live/measurement_systems/index_test.exs
touch test/my_app_web/live/measurement_systems/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/measurement_systems", MeasurementSystems.IndexLive
live "/measurement_systems/new", MeasurementSystems.FormLive, :new
live "/measurement_systems/:id", MeasurementSystems.ShowLive
live "/measurement_systems/:id/edit", MeasurementSystems.FormLive, :edit

If there is a parent, then edit file lib/my_app/measurement_system.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/measurement_system.ex
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
#     index[:key] \
#     index[:formal_name] \
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
