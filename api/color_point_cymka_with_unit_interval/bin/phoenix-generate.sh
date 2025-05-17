#!/bin/sh
set -euf

mix phx.gen.html \
    Color ColorPointCYMKAWithUnitInterval None \
        id:uuid:index \
        lock_version:intNone \
        created_at:timestampNone \
        created_by:urlNone \
        updated_at:timestampNone \
        updated_by:urlNone \
        retired_at:timestampNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        cyan:unit_intervalNone \
        yellow:unit_intervalNone \
        magenta:unit_intervalNone \
        black:unit_intervalNone \
        alpha:unit_intervalNone \
    --force \
    --no-timestamps \

