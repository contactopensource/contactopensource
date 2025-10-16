#!/bin/sh
set -euf

rails generate scaffold \
    color_name_kit \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        hex:hexdigit(6)+ \
        html_color_name:text \
        x11_color_name:text \
        color_naming_system_name:text \
        pantone_process_color_name:text \
    --force \
    --no-timestamps \

