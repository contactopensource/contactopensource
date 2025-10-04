#!/bin/sh
set -euf

mix phx.gen.html \
    None TzDatabase2024b None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:url:index \
        locale_code:string:index \
        sign:"string{1}":index \
        kind:string:index \
        name:"string{50}":index \
        subname:"string{50}":index \
        summary:"string{72}"None \
        description:textNone \
        disambiguation:textNone \
        avatar_image_400x400_url:urlNone \
        avatar_image_400x400_alt:urlNone \
        main_image_1080x1080_url:urlNone \
        main_image_1080x1080_alt:textNone \
        main_image_1920x1080_url:urlNone \
        main_image_1920x1080_alt:textNone \
        main_image_1080x1920_url:urlNone \
        main_image_1080x1920_alt:textNone \
        emoji:textNone \
        star_count:integerNone \
        quick_response_code_id:quick_response_code.idNone \
        universal_product_code_id:universal_product_code.idNone \
        country_code:"string{2}":index \
        country_id:country.idNone \
        latitude_as_decimal_minute_second:iso_6709None \
        latitude_as_decimal_degrees:decimal_degrees:index \
        longitude_as_decimal_minute_second:textNone \
        longitude_as_decimal_degrees:decimal_degrees:index \
        name:text:index \
        comment:textNone \
    --force \
    --no-timestamps \

