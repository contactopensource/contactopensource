#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    color_point_cymk_with_byte \
        id:uuid \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        retired_at:timestamp_utc_usec \
        retired_by:url \
        locale_code:string \
        tagging:string \
        cyan:byte \
        yellow:byte \
        magenta:byte \
        black:byte \

