#!/bin/sh
set -euf

mix phx.gen.html \
    measurement MeasurementUnit None \
        id:uuid:index \
        sign:char:index \
        lock_version:integerNone \
        created_at:timestamp:index \
        created_by:url:index \
        updated_at:timestamp:index \
        updated_by:url:index \
        deleted_at:timestamp:index \
        deleted_by:url:index \
        locale_id:locale.id:index \
        name:textNone \
        symbol:textNone \
        measurement_system_id:measurement_system.idNone \
        numerator:measurement_unit.idNone \
        denominator:measurement_unit.idNone \
    --force \
    --no-timestamps \

