#!/bin/sh
set -euf

rails generate scaffold \
    tz_database_2024b \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:text:index \
        locale_code:string:index \
        sign:"string{1}":index \
        kind:string:index \
        name:"string{50}":index \
        subname:"string{50}":index \
        summary:"string{72}" \
        description:text \
        disambiguation:text \
        avatar_image_400x400_url:text \
        avatar_image_400x400_alt:text \
        main_image_1080x1080_url:text \
        main_image_1080x1080_alt:text \
        main_image_1920x1080_url:text \
        main_image_1920x1080_alt:text \
        main_image_1080x1920_url:text \
        main_image_1080x1920_alt:text \
        emoji:text \
        star_count:integer \
        quick_response_code_id:references \
        universal_product_code_id:references \
        country_code:"string{2}":index \
        country_id:references \
        latitude_as_decimal_minute_second:iso_6709 \
        latitude_as_decimal_degrees:decimal_degrees:index \
        longitude_as_decimal_minute_second:text \
        longitude_as_decimal_degrees:decimal_degrees:index \
        name:text:index \
        comment:text \
    --force \
    --no-timestamps \

