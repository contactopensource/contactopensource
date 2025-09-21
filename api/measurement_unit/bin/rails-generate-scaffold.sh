#!/bin/sh
set -euf

rails generate scaffold \
    measurement_unit \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:text \
        updated_at:timestamp_utc_usec \
        updated_by:text \
        retired_at:timestamp_utc_usec \
        retired_by:text \
        locale_id:references \
        name:text \
        symbol:text \
        measurement_system_id:references \
        numerator:references \
        denominator:references \
    --force \
    --no-timestamps \

