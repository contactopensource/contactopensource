#!/bin/sh
set -euf

mix phx.gen.html \
    None TotalProjectControl None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:url:index \
        locale_code:string:index \
        tagging:string:index \
        dipp:numeric(7,2)None \
        dipp_progress_index_ratio:numeric(7,2)None \
        dipp_progress_index_numerator:numeric(7,2)None \
        dipp_progress_index_denominator:numeric(7,2)None \
        expected_monetary_value:numeric(7,2)None \
        cost_estimate_to_complete:numeric(7,2)None \
    --force \
    --no-timestamps \

