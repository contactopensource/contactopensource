#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    universal_product_code \
        id:uuid \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        deleted_at:timestamp_utc_usec \
        deleted_by:url \
        locale_code:string \
        tagging:string \
        code:string \
        image_url:url \
        image_alt:text \

