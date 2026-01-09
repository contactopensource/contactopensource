#!/bin/sh
set -euf

rails generate scaffold \
    six_axis_model_of_influence \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        suggestibility:probability \
        focus:probability \
        openness:probability \
        connection:probability \
        compliance:probability \
        expectancy:probability \
    --force \
    --no-timestamps \

