#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    measurement \
        id:uuid \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        retired_at:timestamp_utc_usec \
        retired_by:url \
        locale_code:string \
        tagging:string \
        timestamp_utc_usec:timestamp_utc_usec \
        measurement_unit_id:references \
        measurement_device_id:references \
        value:TODO \

