#!/bin/sh
set -euf

rails generate scaffold \
    universal_product_code \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:text \
        updated_at:timestamp_utc_usec \
        updated_by:text \
        retired_at:timestamp_utc_usec \
        retired_by:text \
        locale_id:references \
        code:string:index \
        image_url:text \
        image_alt:text \
    --force \
    --no-timestamps \

