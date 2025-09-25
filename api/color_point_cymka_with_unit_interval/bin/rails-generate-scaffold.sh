#!/bin/sh
set -euf

rails generate scaffold \
    color_point_cymka_with_unit_interval \
        sign:string:index \
        lock_version:integer \
        created_at:timestamp:index \
        created_by:text:index \
        updated_at:timestamp:index \
        updated_by:text:index \
        deleted_at:timestamp:index \
        deleted_by:text:index \
        locale_id:references:index \
        cyan:unit_interval \
        yellow:unit_interval \
        magenta:unit_interval \
        black:unit_interval \
        alpha:unit_interval \
    --force \
    --no-timestamps \

