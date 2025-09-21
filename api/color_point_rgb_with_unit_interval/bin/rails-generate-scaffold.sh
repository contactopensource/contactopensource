#!/bin/sh
set -euf

rails generate scaffold \
    color_point_rgb_with_unit_interval \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:text \
        updated_at:timestamp_utc_usec \
        updated_by:text \
        retired_at:timestamp_utc_usec \
        retired_by:text \
        locale_id:references \
        red:unit_interval \
        green:unit_interval \
        blue:unit_interval \
    --force \
    --no-timestamps \

