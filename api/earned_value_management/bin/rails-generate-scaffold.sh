#!/bin/sh
set -euf

rails generate scaffold \
    earned_value_management \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        planned_value:numeric(7,2) \
        earned_value:numeric(7,2) \
        actual_cost:numeric(7,2) \
        cost_variance:numeric(7,2) \
        cost_variance_ratio:numeric(7,2) \
        cost_performance_index:numeric(7,2) \
        schedule_variance:numeric(7,2) \
        schedule_variance_ratio:numeric(7,2) \
        schedule_performance_index:numeric(7,2) \
    --force \
    --no-timestamps \

