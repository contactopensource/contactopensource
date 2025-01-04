#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    tz_database_2024b \
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
        country_code:"string{2}" \
        country_id:references \
        latitude_as_decimal_minute_second:iso_6709 \
        latitude_as_decimal_degrees:decimal_degrees \
        longitude_as_decimal_minute_second:text \
        longitude_as_decimal_degrees:decimal_degrees \
        name:text \
        comment:text \

