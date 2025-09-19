#!/bin/sh
set -euf

rails generate scaffold \
    item \
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
        summary:string \
        description:text \
        disambiguation:text \
        image_1080x1080_url:text \
        image_1080x1080_alt:text \
        emoji:text \
        star_count:integer \
        geographic_point_id:references \
        color_point_rgb_with_unit_interval_id:references \
        quick_response_code_id:references \
        stock_keeping_unit_id:references \
        universal_product_code_id:references \
    --force \
    --no-timestamps \

