#!/bin/sh
set -euf

rails generate scaffold \
    measurement_unit \
        sign:char:index \
        lock_version:integer \
        created_at:timestamp:index \
        created_by:text:index \
        updated_at:timestamp:index \
        updated_by:text:index \
        deleted_at:timestamp:index \
        deleted_by:text:index \
        locale_id:references:index \
        name:text \
        symbol:text \
        measurement_system_id:references \
        numerator:references \
        denominator:references \
    --force \
    --no-timestamps \

