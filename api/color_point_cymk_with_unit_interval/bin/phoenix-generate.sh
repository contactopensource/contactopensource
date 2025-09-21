#!/bin/sh
set -euf

mix phx.gen.html \
    Color ColorPointCYMKWithUnitInterval None \
        id:uuid:index \
        sign:charNone \
        lock_version:integerNone \
        created_at:timestamp_utc_usecNone \
        created_by:urlNone \
        updated_at:timestamp_utc_usecNone \
        updated_by:urlNone \
        retired_at:timestamp_utc_usecNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        cyan:unit_intervalNone \
        yellow:unit_intervalNone \
        magenta:unit_intervalNone \
        black:unit_intervalNone \
    --force \
    --no-timestamps \

