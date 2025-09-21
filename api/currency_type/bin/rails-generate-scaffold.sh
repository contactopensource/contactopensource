#!/bin/sh
set -euf

rails generate scaffold \
    currency_type \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:text \
        updated_at:timestamp_utc_usec \
        updated_by:text \
        retired_at:timestamp_utc_usec \
        retired_by:text \
        locale_id:references \
        name:text:index \
        code:text:index \
        symbol:text:index \
    --force \
    --no-timestamps \

