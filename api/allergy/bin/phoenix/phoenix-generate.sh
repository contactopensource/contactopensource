#!/bin/sh
set -euf

mix phx.gen.html \
    None Allergy None \
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
        scientific_name:stringNone \
        european_union_name:stringNone \
        united_states_name:stringNone \
        cosmetic_name:stringNone \
    --force \
    --no-timestamps \

