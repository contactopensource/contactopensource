#!/bin/sh
set -euf

mix phx.gen.html \
    Color ColorNameKit None \
        id:uuid:index \
        sign:char:index \
        lock_version:integerNone \
        created_at:timestamp:index \
        created_by:url:index \
        updated_at:timestamp:index \
        updated_by:url:index \
        deleted_at:timestamp:index \
        deleted_by:url:index \
        locale_id:locale.id:index \
        hex:hexdigitNone \
        html_color_name:textNone \
        x11_color_name:textNone \
        color_naming_system_name:textNone \
        pantone_process_color_name:textNone \
    --force \
    --no-timestamps \

