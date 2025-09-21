#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    system_env \
        id:uuid \
        sign:char \
        lock_version:integer \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        deleted_at:timestamp \
        deleted_by:url \
        locale_id:references \
        key:string \
        value:text \

