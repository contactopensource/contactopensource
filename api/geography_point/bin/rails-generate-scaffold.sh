#!/bin/sh
set -euf

cargo loco generate scaffold \
    geo_point \
        id:bigint:index \
        zid:uuid:index \
        lock_version:intNone \
        created_at:timestampNone \
        created_by:urlNone \
        updated_at:timestampNone \
        updated_by:urlNone \
        retired_at:timestampNone \
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

