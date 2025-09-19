#!/bin/sh
set -euf

rails generate scaffold \
    tz_database_2024b \
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

