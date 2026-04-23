#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    allergy \
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
        scientific_name:string \
        european_union_name:string \
        united_states_name:string \
        cosmetic_name:string \

