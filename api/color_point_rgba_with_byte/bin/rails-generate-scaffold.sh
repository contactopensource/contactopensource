#!/bin/sh
set -euf

rails generate scaffold \
    color_point_rgba_with_byte \
        lock_version:integer \
        created_at:timestamp \
        created_by:text \
        updated_at:timestamp \
        updated_by:text \
        retired_at:timestamp \
        retired_by:text \
        locale_id:references \
        red:byte \
        green:byte \
        blue:byte \
        alpha:byte \
    --force \
    --no-timestamps \

