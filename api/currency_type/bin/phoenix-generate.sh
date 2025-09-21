#!/bin/sh
set -euf

mix phx.gen.html \
    None CurrencyType None \
        id:uuid:index \
        sign:char:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:url:index \
        locale_id:locale.id:index \
        name:text:index \
        code:text:index \
        symbol:text:index \
    --force \
    --no-timestamps \

