#!/bin/sh
set -euf

rails generate scaffold \
    color_point_cymk_as_unit_interval \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:text:index \
        locale_code:string:index \
        cyan:unit_interval \
        yellow:unit_interval \
        magenta:unit_interval \
        black:unit_interval \
    --force \
    --no-timestamps \

