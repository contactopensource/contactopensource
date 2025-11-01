#!/bin/sh
set -euf

rails generate scaffold \
    total_project_control \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        dipp:numeric(7,2) \
        dipp_progress_index_ratio:numeric(7,2) \
        dipp_progress_index_numerator:numeric(7,2) \
        dipp_progress_index_denominator:numeric(7,2) \
        expected_monetary_value:numeric(7,2) \
        cost_estimate_to_complete:numeric(7,2) \
    --force \
    --no-timestamps \

