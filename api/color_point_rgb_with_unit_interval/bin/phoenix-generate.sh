#!/bin/sh
set -euf

mix phx.gen.html \
    Color ColorPointRGBWithUnitInterval None \
        id:uuid:index \
        sign:string:index \
        lock_version:integerNone \
        created_at:timestamp:index \
        created_by:url:index \
        updated_at:timestamp:index \
        updated_by:url:index \
        deleted_at:timestamp:index \
        deleted_by:url:index \
        locale_id:locale.id:index \
        red:unit_intervalNone \
        green:unit_intervalNone \
        blue:unit_intervalNone \
    --force \
    --no-timestamps \

