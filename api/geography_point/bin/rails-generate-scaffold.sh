#!/bin/sh
set -euf

rails generate scaffold \
    geography_point \
        sign:string:index \
        lock_version:integer \
        created_at:timestamp:index \
        created_by:text:index \
        updated_at:timestamp:index \
        updated_by:text:index \
        deleted_at:timestamp:index \
        deleted_by:text:index \
        locale_id:references:index \
        latitude_as_decimal_degrees:decimal_degrees \
        longitude_as_decimal_degrees:decimal_degrees \
        altitude_agl_as_meters:meters \
        altitude_msl_as_meters:meters \
        elevation_agl_as_meters:meters \
        elevation_msl_as_meters:meters \
    --force \
    --no-timestamps \

