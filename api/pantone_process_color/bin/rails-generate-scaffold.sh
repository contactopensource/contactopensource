#!/bin/sh
set -euf

rails generate scaffold \
    pantone_process_color \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:text \
        updated_at:timestamp_utc_usec \
        updated_by:text \
        retired_at:timestamp_utc_usec \
        retired_by:text \
        locale_id:references \
        key:string:index \
        name:string:index \
        code:string:index \
        stock:string:index \
    --force \
    --no-timestamps \

