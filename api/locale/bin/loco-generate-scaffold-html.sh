#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    locale \
        id:uuid \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        deleted_at:timestamp_utc_usec \
        deleted_by:url \
        locale_code:string \
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

