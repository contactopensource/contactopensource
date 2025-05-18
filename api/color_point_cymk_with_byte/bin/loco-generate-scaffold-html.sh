#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    color_point_cymk_with_byte \
        id:uuid \
        lock_version:integer \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        retired_at:timestamp \
        retired_by:url \
        locale_id:references \
        cyan:byte \
        yellow:byte \
        magenta:byte \
        black:byte \

