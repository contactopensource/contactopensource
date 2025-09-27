#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    geography_point \
        id:uuid \
        sign:char \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        deleted_at:timestamp_utc_usec \
        deleted_by:url \
        locale_code:string \
        latitude_as_decimal_degrees:decimal_degrees \
        longitude_as_decimal_degrees:decimal_degrees \
        altitude_agl_as_meters:meters \
        altitude_msl_as_meters:meters \
        elevation_agl_as_meters:meters \
        elevation_msl_as_meters:meters \

