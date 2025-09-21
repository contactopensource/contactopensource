#!/bin/sh
set -euf

rails generate scaffold \
    color_point_cymk_as_unit_interval \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:text \
        updated_at:timestamp_utc_usec \
        updated_by:text \
        retired_at:timestamp_utc_usec \
        retired_by:text \
        locale_id:references \
        cyan:unit_interval \
        yellow:unit_interval \
        magenta:unit_interval \
        black:unit_interval \
    --force \
    --no-timestamps \

