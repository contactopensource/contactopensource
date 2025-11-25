#!/bin/sh
set -euf

rails generate scaffold \
    pantone_process_color \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        key:string:index \
        name:string:index \
        code:"string{3}":index \
        stock:"string{1}":index \
    --force \
    --no-timestamps \

