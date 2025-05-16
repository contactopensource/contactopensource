#!/bin/sh
set -euf

rails generate scaffold \
    color_point_cymk_as_unit_interval \
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
        cyan:unit_intervalNone \
        yellow:unit_intervalNone \
        magenta:unit_intervalNone \
        black:unit_intervalNone \
    --force \
    --no-timestamps \

