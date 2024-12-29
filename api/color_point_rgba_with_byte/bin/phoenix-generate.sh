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
        red:byteNone \
        green:byteNone \
        blue:byteNone \
        alpha:byteNone \
    --force \
    --no-timestamps \

