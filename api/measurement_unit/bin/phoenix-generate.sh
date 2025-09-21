#!/bin/sh
set -euf

mix phx.gen.html \
    measurement MeasurementUnit None \
        id:uuid:index \
        sign:charNone \
        lock_version:integerNone \
        created_at:timestamp_utc_usecNone \
        created_by:urlNone \
        updated_at:timestamp_utc_usecNone \
        updated_by:urlNone \
        retired_at:timestamp_utc_usecNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        name:textNone \
        symbol:textNone \
        measurement_system_id:measurement_system.idNone \
        numerator:measurement_unit.idNone \
        denominator:measurement_unit.idNone \
    --force \
    --no-timestamps \

