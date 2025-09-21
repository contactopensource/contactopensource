#!/bin/sh
set -euf

rails generate scaffold \
    color_point_rgba_with_byte \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:text \
        updated_at:timestamp_utc_usec \
        updated_by:text \
        retired_at:timestamp_utc_usec \
        retired_by:text \
        locale_id:references \
        red:byte \
        green:byte \
        blue:byte \
        alpha:byte \
    --force \
    --no-timestamps \

