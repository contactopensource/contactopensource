#!/bin/sh
set -euf

mix phx.gen.html \
    Color ColorPointCYMKAWithUnitInterval None \
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
        cyan:unit_intervalNone \
        yellow:unit_intervalNone \
        magenta:unit_intervalNone \
        black:unit_intervalNone \
        alpha:unit_intervalNone \
    --force \
    --no-timestamps \

