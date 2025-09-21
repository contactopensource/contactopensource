#!/bin/sh
set -euf

rails generate scaffold \
    universal_product_code \
        sign:char:index \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:text:index \
        locale_id:references:index \
        code:string:index \
        image_url:text \
        image_alt:text \
    --force \
    --no-timestamps \

