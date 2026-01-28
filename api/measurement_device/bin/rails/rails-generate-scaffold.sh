#!/bin/sh
set -euf

rails generate scaffold \
    measurement_device \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        name:text \
        name_phonetic:text \
        stock_keeping_unit_id:references \
    --force \
    --no-timestamps \

