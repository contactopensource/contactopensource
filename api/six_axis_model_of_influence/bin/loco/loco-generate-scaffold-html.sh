#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    six_axis_model_of_influence \
        id:uuid \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        retired_at:timestamp_utc_usec \
        retired_by:url \
        locale_code:string \
        tagging:string \
        suggestibility:probability \
        focus:probability \
        openness:probability \
        connection:probability \
        compliance:probability \
        expectancy:probability \

