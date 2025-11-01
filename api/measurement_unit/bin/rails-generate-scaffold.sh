#!/bin/sh
set -euf

rails generate scaffold \
    measurement_unit \
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
        symbol:text \
        measurement_system_id:references \
        numerator:references \
        denominator:references \
    --force \
    --no-timestamps \

