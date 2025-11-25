#!/bin/sh
set -euf

mix phx.gen.html \
    measurement MeasurementUnit None \
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
        id:string:index \
        name:textNone \
        name_phonetic:textNone \
        category:textNone \
        synonyms:textNone \
        loinc_property:textNone \
        guidance:textNone \
        measurement_system_id:referencesNone \
    --force \
    --no-timestamps \

