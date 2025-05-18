#!/bin/sh
set -euf

rails generate scaffold \
    locale \
        lock_version:integer \
        created_at:timestamp \
        created_by:text \
        updated_at:timestamp \
        updated_by:text \
        retired_at:timestamp \
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
        currency_code:text \
        currency_symbol:text \
        quotation_start_delimiter:text \
        quotation_stop_delimiter:text \
    --force \
    --no-timestamps \

