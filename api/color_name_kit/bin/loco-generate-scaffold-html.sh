#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    color_name_kit \
        id:uuid \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        retired_at:timestamp_utc_usec \
        retired_by:url \
        locale_id:references \
        hex:hexdigit \
        html_color_name:text \
        x11_color_name:text \
        color_naming_system_name:text \
        pantone_process_color_name:text \

