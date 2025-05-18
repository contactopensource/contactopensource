#!/bin/sh
set -euf

rails generate scaffold \
    color_point_cymka_as_byte \
        lock_version:integer \
        created_at:timestamp \
        created_by:text \
        updated_at:timestamp \
        updated_by:text \
        retired_at:timestamp \
        retired_by:text \
        locale_id:references \
        cyan:byte \
        yellow:byte \
        magenta:byte \
        black:byte \
        alpha:byte \
    --force \
    --no-timestamps \

