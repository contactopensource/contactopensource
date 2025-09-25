#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.measurement.MeasurementUnit \
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
    --attribute name:text \
    --attribute symbol:text \
    --attribute measurement_system_id:measurement_system.id \
    --attribute numerator:measurement_unit.id \
    --attribute denominator:measurement_unit.id \

mix ash.codegen create_measurement_unit
mix ash.migrate

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
