#!/bin/sh
set -euf

rails generate scaffold \
    geography_point \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        latitude_as_decimal_degrees:decimal_degrees \
        longitude_as_decimal_degrees:decimal_degrees \
        altitude_agl_as_meters:meters \
        altitude_msl_as_meters:meters \
        elevation_agl_as_meters:meters \
        elevation_msl_as_meters:meters \
    --force \
    --no-timestamps \

