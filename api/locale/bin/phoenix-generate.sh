#!/bin/sh
set -euf

mix phx.gen.html \
    None locale None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestampNone \
        created_by:urlNone \
        updated_at:timestampNone \
        updated_by:urlNone \
        retired_at:timestampNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        text:textNone \
        language_code:textNone \
        country_code:textNone \
        script_code:textNone \
        region_code:textNone \
        variant_code:textNone \
        decimal_separator:textNone \
        grouping_separator:textNone \
        currency_name:textNone \
        currency_code:textNone \
        currency_symbol:textNone \
        quotation_start_delimiter:textNone \
        quotation_stop_delimiter:textNone \
    --force \
    --no-timestamps \

