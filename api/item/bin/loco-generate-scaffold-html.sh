#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    item \
        id:bigint \
        zid:uuid \
        lock_version:int \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        retired_at:timestamp \
        retired_by:url \
        locale_id:references \
        title:"string{50}" \
        subtitle:"string{50}" \
        summary:string \
        description:text \
        disambiguation:text \
        image_1024x1024_url:url \
        image_1024x1024_alt:text \
        emoji:text \
        star_count:integer \
        geographic_point_id:references \
        color_point_rgb_with_unit_interval_id:references \
        quick_response_code_id:references \
        universal_product_code_id:references \
