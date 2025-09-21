#!/bin/sh
set -euf

mix phx.gen.html \
    Color ColorPointRGBWithByte None \
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
        red:byteNone \
        green:byteNone \
        blue:byteNone \
    --force \
    --no-timestamps \

