#!/bin/sh
set -euf

mix phx.gen.html \
    None CurrencyType None \
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
        name:text:index \
        code:text:index \
        symbol:text:index \
    --force \
    --no-timestamps \

