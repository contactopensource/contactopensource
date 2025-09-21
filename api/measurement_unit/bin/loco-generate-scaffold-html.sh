#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    measurement_unit \
        id:uuid \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        deleted_at:timestamp_utc_usec \
        deleted_by:url \
        locale_id:references \
        name:text \
        symbol:text \
        measurement_system_id:references \
        numerator:measurement_unit.id \
        denominator:measurement_unit.id \

