#!/bin/sh
set -euf

rails generate scaffold \
    system_env \
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
        value:text \
    --force \
    --no-timestamps \

