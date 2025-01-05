#!/bin/sh
set -euf

cargo loco generate scaffold \
    universal_product_code \
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
        code:string:index \
        image_url:urlNone \
    --force \
    --no-timestamps \

