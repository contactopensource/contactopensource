#!/bin/sh
set -euf

rails generate scaffold \
    locale \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        text:text \
        language_code:text \
        country_code:text \
        script_code:text \
        region_code:text \
        variant_code:text \
        decimal_separator:text \
        grouping_separator:text \
        currency_name:text \
        currency_code:text \
        currency_symbol:text \
        quotation_start_delimiter:text \
        quotation_stop_delimiter:text \
    --force \
    --no-timestamps \

