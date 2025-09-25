#!/bin/sh
set -euf

rails generate scaffold \
    color_point_rgba_with_byte \
        sign:string:index \
        lock_version:integer \
        created_at:timestamp:index \
        created_by:text:index \
        updated_at:timestamp:index \
        updated_by:text:index \
        deleted_at:timestamp:index \
        deleted_by:text:index \
        locale_id:references:index \
        red:byte \
        green:byte \
        blue:byte \
        alpha:byte \
    --force \
    --no-timestamps \

