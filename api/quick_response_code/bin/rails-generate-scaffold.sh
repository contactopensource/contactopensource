#!/bin/sh
set -euf

rails generate scaffold \
    quick_response_code \
        lock_version:integer \
        created_at:timestamp \
        created_by:text \
        updated_at:timestamp \
        updated_by:text \
        retired_at:timestamp \
        retired_by:text \
        locale_id:references \
        code:string:index \
        image_url:text \
    --force \
    --no-timestamps \

