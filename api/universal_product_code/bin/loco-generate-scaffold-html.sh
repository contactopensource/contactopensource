#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    universal_product_code \
        id:uuid \
        sign:string \
        lock_version:integer \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        deleted_at:timestamp \
        deleted_by:url \
        locale_id:references \
        code:string \
        image_url:url \
        image_alt:text \

