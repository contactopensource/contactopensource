#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    pantone_process_color \
        id:uuid \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        deleted_at:timestamp_utc_usec \
        deleted_by:url \
        locale_code:string \
        tagging:string \
        key:string \
        name:string \
        code:"string{3}" \
        stock:"string{1}" \

