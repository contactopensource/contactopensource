#!/bin/sh
set -euf

mix phx.gen.html \
    None TzDatabase2024b None \
        id:uuid:index \
        sign:charNone \
        lock_version:integerNone \
        created_at:timestamp_utc_usecNone \
        created_by:urlNone \
        updated_at:timestamp_utc_usecNone \
        updated_by:urlNone \
        retired_at:timestamp_utc_usecNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        title:string:index \
        subtitle:string:index \
        summary:stringNone \
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
        country_code:string:index \
        country_id:country.idNone \
        latitude_as_decimal_minute_second:iso_6709None \
        latitude_as_decimal_degrees:decimal_degrees:index \
        longitude_as_decimal_minute_second:textNone \
        longitude_as_decimal_degrees:decimal_degrees:index \
        name:text:index \
        comment:textNone \
    --force \
    --no-timestamps \

