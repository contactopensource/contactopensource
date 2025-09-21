#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Color.ColorPointRGBWithUnitInterval \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute sign:char \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:url \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:url \
    --attribute retired_at:timestamp_utc_usec \
    --attribute retired_by:url \
    --attribute locale_id:locale.id \
    --attribute red:unit_interval \
    --attribute green:unit_interval \
    --attribute blue:unit_interval \

mix ash.codegen create_color_point_rgb_with_unit_interval
mix ash.migrate
