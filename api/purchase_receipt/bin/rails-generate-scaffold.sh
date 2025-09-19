#!/bin/sh
set -euf

rails generate scaffold \
    purchase_receipt \
        lock_version:integer \
        created_at:timestamp \
        created_by:text \
        updated_at:timestamp \
        updated_by:text \
        retired_at:timestamp \
        retired_by:text \
        locale_id:references \
        title:"string{50}":index \
        subtitle:"string{50}":index \
        summary:"string{255}" \
        description:text \
        disambiguation:text \
        image_1080x1080_url:text \
        image_1080x1080_alt:text \
        emoji:text \
        star_count:integer \
        quick_response_code_id:references \
        universal_product_code_id:references \
        key:string:index \
    --force \
    --no-timestamps \

