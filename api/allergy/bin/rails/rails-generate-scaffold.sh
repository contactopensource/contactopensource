#!/bin/sh
set -euf

rails generate scaffold \
    allergy \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        scientific_name:string \
        european_union_name:string \
        united_states_name:string \
        cosmetic_name:string \
    --force \
    --no-timestamps \

