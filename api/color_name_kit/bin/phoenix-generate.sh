#!/bin/sh
set -euf

mix phx.gen.html \
    Color ColorNameKit None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestampNone \
        created_by:urlNone \
        updated_at:timestampNone \
        updated_by:urlNone \
        retired_at:timestampNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        hex:hexdigitNone \
        html_color_name:textNone \
        x11_color_name:textNone \
        color_naming_system_name:textNone \
        pantone_process_color_name:textNone \
    --force \
    --no-timestamps \

