#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    color_point_rgba_with_unit_interval \
        id:uuid \
        sign:string \
        lock_version:integer \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        deleted_at:timestamp \
        deleted_by:url \
        locale_id:references \
        red:unit_interval \
        green:unit_interval \
        blue:unit_interval \
        alpha:unit_interval \

