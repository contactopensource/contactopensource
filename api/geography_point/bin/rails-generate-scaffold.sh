#!/bin/sh
set -euf

rails generate scaffold \
    geography_point \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:text \
        updated_at:timestamp_utc_usec \
        updated_by:text \
        retired_at:timestamp_utc_usec \
        retired_by:text \
        locale_id:references \
        latitude_as_decimal_degrees:decimal_degrees \
        longitude_as_decimal_degrees:decimal_degrees \
        altitude_agl_as_meters:meters \
        altitude_msl_as_meters:meters \
        elevation_agl_as_meters:meters \
        elevation_msl_as_meters:meters \
    --force \
    --no-timestamps \

