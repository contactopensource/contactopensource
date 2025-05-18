#!/bin/sh
set -euf

rails generate scaffold \
    color_point_rgba_with_unit_interval \
        lock_version:integer \
        created_at:timestamp \
        created_by:text \
        updated_at:timestamp \
        updated_by:text \
        retired_at:timestamp \
        retired_by:text \
        locale_id:references \
        red:unit_interval \
        green:unit_interval \
        blue:unit_interval \
        alpha:unit_interval \
    --force \
    --no-timestamps \

