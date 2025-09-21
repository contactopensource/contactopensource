#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Color.ColorPointCYMKWithByte \
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
    --attribute cyan:byte \
    --attribute yellow:byte \
    --attribute magenta:byte \
    --attribute black:byte \

mix ash.codegen create_color_point_cymk_with_byte
mix ash.migrate
