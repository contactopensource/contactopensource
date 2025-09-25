#!/bin/sh
set -euf

mix phx.gen.html \
    None GeographyPoint None \
        id:uuid:index \
        sign:string:index \
        lock_version:integerNone \
        created_at:timestamp:index \
        created_by:url:index \
        updated_at:timestamp:index \
        updated_by:url:index \
        deleted_at:timestamp:index \
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

