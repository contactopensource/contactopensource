#!/bin/sh
set -euf

mix phx.gen.html \
    Color None None \
        id:bigint:index \
        zid:uuid:index \
        lock_version:intNone \
        created_at:timestampNone \
        created_by:urlNone \
        updated_at:timestampNone \
        updated_by:urlNone \
        retired_at:timestampNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        hex:hexdigit(6)+None \
        html_color_name:textNone \
        x11_color_name:textNone \
        color_naming_system_name:textNone \
        pantone_process_color_name:textNone \
    --force \
    --no-timestamps \

