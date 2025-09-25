#!/bin/sh
set -euf

rails generate scaffold \
    locale \
        sign:string:index \
        lock_version:integer \
        created_at:timestamp:index \
        created_by:text:index \
        updated_at:timestamp:index \
        updated_by:text:index \
        deleted_at:timestamp:index \
        deleted_by:text:index \
        locale_id:references:index \
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

