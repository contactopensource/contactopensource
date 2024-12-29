#!/bin/sh
set -euf

cargo loco generate scaffold \
    currency_type \
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
        name:text:index \
        code:text:index \
        symbol:text:index \
    --force \
    --no-timestamps \

