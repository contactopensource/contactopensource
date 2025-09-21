#!/bin/sh
set -euf

rails generate scaffold \
    pantone_process_color \
        sign:char:index \
        lock_version:integer \
        created_at:timestamp:index \
        created_by:text:index \
        updated_at:timestamp:index \
        updated_by:text:index \
        deleted_at:timestamp:index \
        deleted_by:text:index \
        locale_id:references:index \
        key:string:index \
        name:string:index \
        code:string:index \
        stock:string:index \
    --force \
    --no-timestamps \

