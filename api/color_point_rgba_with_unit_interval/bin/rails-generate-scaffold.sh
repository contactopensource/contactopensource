#!/bin/sh
set -euf

rails generate scaffold \
    color_point_rgba_with_unit_interval \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        red:unit_interval \
        green:unit_interval \
        blue:unit_interval \
        alpha:unit_interval \
    --force \
    --no-timestamps \

