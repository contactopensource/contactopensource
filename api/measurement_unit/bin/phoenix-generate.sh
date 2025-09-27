#!/bin/sh
set -euf

mix phx.gen.html \
    measurement MeasurementUnit None \
        id:uuid:index \
        sign:char:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:url:index \
        locale_code:string:index \
        name:textNone \
        symbol:textNone \
        measurement_system_id:measurement_system.idNone \
        numerator:measurement_unit.idNone \
        denominator:measurement_unit.idNone \
    --force \
    --no-timestamps \

