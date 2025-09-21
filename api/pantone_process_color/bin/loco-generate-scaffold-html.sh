#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    pantone_process_color \
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
        key:string \
        name:string \
        code:string \
        stock:string \

