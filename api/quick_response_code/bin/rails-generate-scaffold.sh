#!/bin/sh
set -euf

rails generate scaffold \
    quick_response_code \
        sign:char:index \
        lock_version:integer \
        created_at:timestamp:index \
        created_by:text:index \
        updated_at:timestamp:index \
        updated_by:text:index \
        deleted_at:timestamp:index \
        deleted_by:text:index \
        locale_id:references:index \
        code:string:index \
        image_url:text \
        image_alt:text \
    --force \
    --no-timestamps \

