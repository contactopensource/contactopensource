#!/bin/sh
set -euf

mix phx.gen.html \
    None EarnedValueManagement None \
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
        planned_value:numeric(7,2)None \
        earned_value:numeric(7,2)None \
        actual_cost:numeric(7,2)None \
        cost_variance:numeric(7,2)None \
        cost_variance_ratio:numeric(7,2)None \
        cost_performance_index:numeric(7,2)None \
        schedule_variance:numeric(7,2)None \
        schedule_variance_ratio:numeric(7,2)None \
        schedule_performance_index:numeric(7,2)None \
    --force \
    --no-timestamps \

