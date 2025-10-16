#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    tz_database_2024b \
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
        name:"string{50}" \
        subname:"string{50}" \
        summary:"string{72}" \
        description:text \
        disambiguation:text \
        sign:"string{1}" \
        kind:string \
        avatar_image_400x400_url:url \
        avatar_image_400x400_alt:url \
        main_image_1080x1080_url:url \
        main_image_1080x1080_alt:text \
        main_image_1920x1080_url:url \
        main_image_1920x1080_alt:text \
        main_image_1080x1920_url:url \
        main_image_1080x1920_alt:text \
        emoji:text \
        star_count:integer \
        quick_response_code_id:references \
        universal_product_code_id:references \
        country_code:"string{2}" \
        country_id:references \
        latitude_as_decimal_minute_second:iso_6709 \
        latitude_as_decimal_degrees:decimal_degrees \
        longitude_as_decimal_minute_second:text \
        longitude_as_decimal_degrees:decimal_degrees \
        name:text \
        comment:text \

