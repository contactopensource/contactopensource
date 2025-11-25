#!/bin/sh
set -euf

mix phx.gen.html \
    None HalsteadComplexity None \
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
        volume_actual:numeric(7,2)None \
        volume_target:numeric(7,2)None \
        volume_ratio:numeric(7,2)None \
        volume_unit:textNone \
        volume_description:textNone \
        difficulty_actual:numeric(7,2)None \
        difficulty_target:numeric(7,2)None \
        difficulty_ratio:numeric(7,2)None \
        difficulty_unit:textNone \
        difficulty_description:textNone \
        effort_actual:numeric(7,2)None \
        effort_target:numeric(7,2)None \
        effort_ratio:numeric(7,2)None \
        effort_unit:numeric(7,2)None \
        effort_description:numeric(7,2)None \
    --force \
    --no-timestamps \

