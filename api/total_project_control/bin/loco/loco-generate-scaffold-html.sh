#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    total_project_control \
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
        dipp:numeric(7,2) \
        dipp_progress_index_ratio:numeric(7,2) \
        dipp_progress_index_numerator:numeric(7,2) \
        dipp_progress_index_denominator:numeric(7,2) \
        expected_monetary_value:numeric(7,2) \
        cost_estimate_to_complete:numeric(7,2) \

