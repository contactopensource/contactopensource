#!/bin/sh
set -euf

rails generate scaffold \
    status_system \
        lock_version:integer \
        created_at:timestamp \
        created_by:text \
        updated_at:timestamp \
        updated_by:text \
        retired_at:timestamp \
        retired_by:text \
        locale_id:references \
        key:string:index \
        formal_name:string:index \
    --force \
    --no-timestamps \

