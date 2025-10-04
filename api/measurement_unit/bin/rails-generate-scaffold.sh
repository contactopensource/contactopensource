#!/bin/sh
set -euf

rails generate scaffold \
    measurement_unit \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:text:index \
        locale_code:string:index \
        name:text \
        symbol:text \
        measurement_system_id:references \
        numerator:references \
        denominator:references \
    --force \
    --no-timestamps \

