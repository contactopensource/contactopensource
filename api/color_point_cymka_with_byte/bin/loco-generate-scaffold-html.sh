#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    color_point_cymka_as_byte \
        id:uuid \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        deleted_at:timestamp_utc_usec \
        deleted_by:url \
        locale_code:string \
        cyan:byte \
        yellow:byte \
        magenta:byte \
        black:byte \
        alpha:byte \

