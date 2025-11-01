#!/bin/sh
set -euf

mix phx.gen.html \
    None locale None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:url:index \
        locale_code:string:index \
        tagging:string:index \
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

