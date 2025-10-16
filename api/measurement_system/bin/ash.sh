#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.measurement_systems \
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
    --attribute key:string \
    --attribute formal_name:string \

mix ash.codegen create_measurement_systems
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_measurement_systems.exs

mkdir -p lib/my_app_web/live/measurement_systems
touch lib/my_app_web/live/measurement_systems/form_live.ex
touch lib/my_app_web/live/measurement_systems/index_live.ex
touch lib/my_app_web/live/measurement_systems/show_live.ex

mkdir -p test/my_app_web/live/measurement_systems
touch test/my_app_web/live/measurement_systems/form_live.ex
touch test/my_app_web/live/measurement_systems/index_live.ex
touch test/my_app_web/live/measurement_systems/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/measurement_systems", MeasurementSystems.IndexLive
live "/measurement_systems/new", MeasurementSystems.FormLive, :new
live "/measurement_systems/:id", MeasurementSystems.ShowLive
live "/measurement_systems/:id/edit", MeasurementSystems.FormLive, :edit
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
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
