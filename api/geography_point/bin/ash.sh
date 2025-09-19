#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.GeographyPoint \
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
    --attribute latitude_as_decimal_degrees:decimal_degrees \
    --attribute longitude_as_decimal_degrees:decimal_degrees \
    --attribute altitude_agl_as_meters:meters \
    --attribute altitude_msl_as_meters:meters \
    --attribute elevation_agl_as_meters:meters \
    --attribute elevation_msl_as_meters:meters \

