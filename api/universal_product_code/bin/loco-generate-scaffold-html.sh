#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    universal_product_code \
        id:uuid \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        retired_at:timestamp_utc_usec \
        retired_by:url \
        locale_id:references \
        code:string \
        image_url:url \
        image_alt:text \

