#!/bin/sh
set -euf

rails generate scaffold \
    locale \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:text \
        updated_at:timestamp_utc_usec \
        updated_by:text \
        retired_at:timestamp_utc_usec \
        retired_by:text \
        locale_id:references \
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

