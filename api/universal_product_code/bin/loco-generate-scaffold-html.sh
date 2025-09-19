#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    universal_product_code \
        id:uuid \
        lock_version:integer \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        retired_at:timestamp \
        retired_by:url \
        locale_id:references \
        code:string \
        image_url:url \
        image_alt:text \

