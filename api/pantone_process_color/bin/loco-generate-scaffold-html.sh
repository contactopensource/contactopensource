#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    pantone_process_color \
        id:uuid \
        sign:string \
        lock_version:integer \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        deleted_at:timestamp \
        deleted_by:url \
        locale_id:references \
        key:string \
        name:string \
        code:string \
        stock:string \

