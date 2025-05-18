#!/bin/sh
set -euf

rails generate scaffold \
    color_point_cymk_as_unit_interval \
        lock_version:integer \
        created_at:timestamp \
        created_by:text \
        updated_at:timestamp \
        updated_by:text \
        retired_at:timestamp \
        retired_by:text \
        locale_id:references \
        cyan:unit_interval \
        yellow:unit_interval \
        magenta:unit_interval \
        black:unit_interval \
    --force \
    --no-timestamps \

