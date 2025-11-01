#!/bin/sh
set -euf

mix phx.gen.html \
    Color ColorPointCYMKWithUnitInterval None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:url:index \
        locale_code:string:index \
        tagging:string:index \
        cyan:unit_intervalNone \
        yellow:unit_intervalNone \
        magenta:unit_intervalNone \
        black:unit_intervalNone \
    --force \
    --no-timestamps \

