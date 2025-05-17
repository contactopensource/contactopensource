#!/bin/sh
set -euf

mix phx.gen.html \
    None TzDatabase2024b None \
        id:uuid:index \
        lock_version:intNone \
        created_at:timestampNone \
        created_by:urlNone \
        updated_at:timestampNone \
        updated_by:urlNone \
        retired_at:timestampNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        title:"string{50}":index \
        subtitle:"string{50}":index \
        summary:stringNone \
        description:textNone \
        disambiguation:textNone \
        image_1024x1024_url:urlNone \
        image_1024x1024_alt:textNone \
        emoji:textNone \
        star_count:integerNone \
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

