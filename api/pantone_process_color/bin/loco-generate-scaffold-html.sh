#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    pantone_process_color \
        id:uuid \
        lock_version:int \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        retired_at:timestamp \
        retired_by:url \
        locale_id:references \
        key:string \
        name:string \
        code:"string{3}" \
        stock:"string{1}" \

