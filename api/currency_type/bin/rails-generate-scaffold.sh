#!/bin/sh
set -euf

rails generate scaffold \
    currency_type \
        sign:string:index \
        lock_version:integer \
        created_at:timestamp:index \
        created_by:text:index \
        updated_at:timestamp:index \
        updated_by:text:index \
        deleted_at:timestamp:index \
        deleted_by:text:index \
        locale_id:references:index \
        name:text:index \
        code:text:index \
        symbol:text:index \
    --force \
    --no-timestamps \

