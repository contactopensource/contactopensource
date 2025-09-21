#!/bin/sh
set -euf

rails generate scaffold \
    status_system \
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
        formal_name:string:index \
    --force \
    --no-timestamps \

