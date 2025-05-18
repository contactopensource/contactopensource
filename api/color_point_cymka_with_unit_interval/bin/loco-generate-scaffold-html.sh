#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    color_point_cymka_with_unit_interval \
        id:uuid \
        lock_version:integer \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        retired_at:timestamp \
        retired_by:url \
        locale_id:references \
        cyan:unit_interval \
        yellow:unit_interval \
        magenta:unit_interval \
        black:unit_interval \
        alpha:unit_interval \

