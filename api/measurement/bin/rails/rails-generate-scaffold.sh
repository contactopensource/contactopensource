#!/bin/sh
set -euf

rails generate scaffold \
    measurement \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        timestamp_utc_usec:timestamp_utc_usec \
        measurement_unit_id:references \
        measurement_device_id:references \
        value:TODO \
    --force \
    --no-timestamps \

