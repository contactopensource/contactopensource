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
        retired_at:timestamp_utc_usec:index \
        retired_by:url:index \
        locale_code:string:index \
        tagging:string:index \
        deployment_frequency_actual:numeric(7,2)None \
        deployment_frequency_target:numeric(7,2)None \
        deployment_frequency_ratio:numeric(7,2)None \
        deployment_frequency_unit:textNone \
        deployment_frequency_description:textNone \
        mean_lead_time_for_changes_actual:numeric(7,2)None \
        mean_lead_time_for_changes_target:numeric(7,2)None \
        mean_lead_time_for_changes_ratio:numeric(7,2)None \
        mean_lead_time_for_changes_unit:textNone \
        mean_lead_time_for_changes_description:textNone \
        change_failure_rate_actual:numeric(7,2)None \
        change_failure_rate_target:numeric(7,2)None \
        change_failure_rate_ratio:numeric(7,2)None \
        change_failure_rate_unit:textNone \
        change_failure_rate_description:textNone \
        failed_deployment_recovery_time_actual:numeric(7,2)None \
        failed_deployment_recovery_time_target:numeric(7,2)None \
        failed_deployment_recovery_time_ratio:numeric(7,2)None \
        failed_deployment_recovery_time_unit:textNone \
        failed_deployment_recovery_time_description:textNone \
    --force \
    --no-timestamps \

