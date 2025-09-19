#!/bin/sh
set -euf

rails generate scaffold \
    universal_product_code \
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
        image_alt:text \
    --force \
    --no-timestamps \

