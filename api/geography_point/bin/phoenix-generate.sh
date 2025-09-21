#!/bin/sh
set -euf

mix phx.gen.html \
    None GeographyPoint None \
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
        latitude_as_decimal_degrees:decimal_degreesNone \
        longitude_as_decimal_degrees:decimal_degreesNone \
        altitude_agl_as_meters:metersNone \
        altitude_msl_as_meters:metersNone \
        elevation_agl_as_meters:metersNone \
        elevation_msl_as_meters:metersNone \
    --force \
    --no-timestamps \

