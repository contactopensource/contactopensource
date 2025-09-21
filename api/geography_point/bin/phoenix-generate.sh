#!/bin/sh
set -euf

mix phx.gen.html \
    None GeographyPoint None \
        id:uuid:index \
        sign:char:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:url:index \
        locale_id:locale.id:index \
        latitude_as_decimal_degrees:decimal_degreesNone \
        longitude_as_decimal_degrees:decimal_degreesNone \
        altitude_agl_as_meters:metersNone \
        altitude_msl_as_meters:metersNone \
        elevation_agl_as_meters:metersNone \
        elevation_msl_as_meters:metersNone \
    --force \
    --no-timestamps \

