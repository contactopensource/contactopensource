#!/bin/sh
set -euf

mix phx.gen.html \
    None DoraMetricsKit None \
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
        deployment_frequency_actual:numeric(7,2)None \
        deployment_frequency_target:numeric(7,2)None \
        deployment_frequency_ratio:numeric(7,2)None \
        deployment_frequency_unit:textNone \
        deployment_frequency_description:textNone \
        lead_time_for_changes_actual:numeric(7,2)None \
        lead_time_for_changes_target:numeric(7,2)None \
        lead_time_for_changes_ratio:numeric(7,2)None \
        lead_time_for_changes_unit:textNone \
        lead_time_for_changes_description:textNone \
        change_failure_rate_actual:numeric(7,2)None \
        change_failure_rate_target:numeric(7,2)None \
        change_failure_rate_ratio:numeric(7,2)None \
        change_failure_rate_unit:textNone \
        change_failure_rate_description:textNone \
        mean_time_to_recovery_actual:numeric(7,2)None \
        mean_time_to_recovery_target:numeric(7,2)None \
        mean_time_to_recovery_ratio:numeric(7,2)None \
        mean_time_to_recovery_unit:textNone \
        mean_time_to_recovery_description:textNone \
    --force \
    --no-timestamps \

