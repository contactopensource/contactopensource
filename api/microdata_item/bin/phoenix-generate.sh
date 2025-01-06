#!/bin/sh
set -euf

mix phx.gen.html \
    None None None \
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
        itemtype:URLNone \
        itemprop:textNone \
    --force \
    --no-timestamps \

