#!/bin/sh
set -euf

rails generate scaffold \
    color_name_kit \
        lock_version:integer \
        created_at:timestamp \
        created_by:text \
        updated_at:timestamp \
        updated_by:text \
        retired_at:timestamp \
        retired_by:text \
        locale_id:references \
        hex:hexdigit(6)+ \
        html_color_name:text \
        x11_color_name:text \
        color_naming_system_name:text \
        pantone_process_color_name:text \
    --force \
    --no-timestamps \

