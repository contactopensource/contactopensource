#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    color_name_kit \
        id:uuid \
        sign:string \
        lock_version:integer \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        deleted_at:timestamp \
        deleted_by:url \
        locale_id:references \
        hex:hexdigit \
        html_color_name:text \
        x11_color_name:text \
        color_naming_system_name:text \
        pantone_process_color_name:text \

