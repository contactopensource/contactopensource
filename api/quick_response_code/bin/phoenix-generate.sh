#!/bin/sh
set -euf

mix phx.gen.html \
    Code None None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestampNone \
        created_by:urlNone \
        updated_at:timestampNone \
        updated_by:urlNone \
        retired_at:timestampNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        code:string:index \
        image_url:urlNone \
    --force \
    --no-timestamps \

