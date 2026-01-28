#!/bin/sh
set -euf

mix phx.gen.html \
    measurement Measurement None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:url:index \
        locale_code:string:index \
        tagging:string:index \
        timestamp_utc_usec:timestamp_utc_usecNone \
        measurement_unit_id:referencesNone \
        measurement_device_id:referencesNone \
        value:TODONone \
    --force \
    --no-timestamps \

