#!/bin/sh
set -euf

rails generate scaffold \
    measurement_system \
        sign:char:index \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:text:index \
        locale_code:string:index \
        key:string:index \
        formal_name:string:index \
    --force \
    --no-timestamps \

