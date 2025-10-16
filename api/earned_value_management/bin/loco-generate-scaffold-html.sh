#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    earned_value_management \
        id:uuid \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        deleted_at:timestamp_utc_usec \
        deleted_by:url \
        locale_code:string \
        tagging:string \
        planned_value:numeric(7,2) \
        earned_value:numeric(7,2) \
        actual_cost:numeric(7,2) \
        cost_variance:numeric(7,2) \
        cost_variance_ratio:numeric(7,2) \
        cost_performance_index:numeric(7,2) \
        schedule_variance:numeric(7,2) \
        schedule_variance_ratio:numeric(7,2) \
        schedule_performance_index:numeric(7,2) \

