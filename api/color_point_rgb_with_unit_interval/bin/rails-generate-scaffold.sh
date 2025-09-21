#!/bin/sh
set -euf

rails generate scaffold \
    color_point_rgb_with_unit_interval \
        sign:char:index \
        lock_version:integer \
        created_at:timestamp:index \
        created_by:text:index \
        updated_at:timestamp:index \
        updated_by:text:index \
        deleted_at:timestamp:index \
        deleted_by:text:index \
        locale_id:references:index \
        red:unit_interval \
        green:unit_interval \
        blue:unit_interval \
    --force \
    --no-timestamps \

