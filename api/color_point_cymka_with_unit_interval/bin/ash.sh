#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Color.ColorPointCYMKAWithUnitInterval \
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
    --attribute cyan:unit_interval \
    --attribute yellow:unit_interval \
    --attribute magenta:unit_interval \
    --attribute black:unit_interval \
    --attribute alpha:unit_interval \

mix ash.codegen create_color_point_cymka_with_unit_interval
mix ash.migrate
