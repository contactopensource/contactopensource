#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.measurement.MeasurementUnit \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute lock_version:integer \
    --attribute created_at:timestamp \
    --attribute created_by:url \
    --attribute updated_at:timestamp \
    --attribute updated_by:url \
    --attribute retired_at:timestamp \
    --attribute retired_by:url \
    --attribute locale_id:locale.id \
    --attribute name:text \
    --attribute symbol:text \
    --attribute measurement_system_id:measurement_system.id \
    --attribute numerator:measurement_unit.id \
    --attribute denominator:measurement_unit.id \

