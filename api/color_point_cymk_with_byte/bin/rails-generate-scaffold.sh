#!/bin/sh
set -euf

cargo loco generate scaffold \
    color_point_cymk_with_byte \
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
        cyan:byteNone \
        yellow:byteNone \
        magenta:byteNone \
        black:byteNone \
    --force \
    --no-timestamps \

