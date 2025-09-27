#!/bin/sh
set -euf

mix phx.gen.html \
    Color ColorPointRGBAWithUnitInterval None \
        id:uuid:index \
        sign:char:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:url:index \
        locale_code:string:index \
        red:unit_intervalNone \
        green:unit_intervalNone \
        blue:unit_intervalNone \
        alpha:unit_intervalNone \
    --force \
    --no-timestamps \

