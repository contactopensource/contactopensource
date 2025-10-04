#!/bin/sh
set -euf

rails generate scaffold \
    currency_type \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:text:index \
        locale_code:string:index \
        name:text:index \
        code:text:index \
        symbol:text:index \
    --force \
    --no-timestamps \

