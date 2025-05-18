#!/bin/sh
set -euf

mix phx.gen.html \
    Color Color Point CYMKA With Byte None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestampNone \
        created_by:urlNone \
        updated_at:timestampNone \
        updated_by:urlNone \
        retired_at:timestampNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        cyan:byteNone \
        yellow:byteNone \
        magenta:byteNone \
        black:byteNone \
        alpha:byteNone \
    --force \
    --no-timestamps \

