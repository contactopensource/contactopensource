#!/bin/sh
set -euf

rails generate scaffold \
    color_name_kit \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:text \
        updated_at:timestamp_utc_usec \
        updated_by:text \
        retired_at:timestamp_utc_usec \
        retired_by:text \
        locale_id:references \
        hex:hexdigit \
        html_color_name:text \
        x11_color_name:text \
        color_naming_system_name:text \
        pantone_process_color_name:text \
    --force \
    --no-timestamps \

