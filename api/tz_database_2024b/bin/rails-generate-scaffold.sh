#!/bin/sh
set -euf

rails generate scaffold \
    tz_database_2024b \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:text \
        updated_at:timestamp_utc_usec \
        updated_by:text \
        retired_at:timestamp_utc_usec \
        retired_by:text \
        locale_id:references \
        title:string:index \
        subtitle:string:index \
        summary:string \
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
        country_code:string:index \
        country_id:references \
        latitude_as_decimal_minute_second:iso_6709 \
        latitude_as_decimal_degrees:decimal_degrees:index \
        longitude_as_decimal_minute_second:text \
        longitude_as_decimal_degrees:decimal_degrees:index \
        name:text:index \
        comment:text \
    --force \
    --no-timestamps \

