#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    dora_metrics_kit \
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
        deployment_frequency_actual:numeric(7,2) \
        deployment_frequency_target:numeric(7,2) \
        deployment_frequency_ratio:numeric(7,2) \
        deployment_frequency_unit:text \
        deployment_frequency_description:text \
        mean_lead_time_for_changes_actual:numeric(7,2) \
        mean_lead_time_for_changes_target:numeric(7,2) \
        mean_lead_time_for_changes_ratio:numeric(7,2) \
        mean_lead_time_for_changes_unit:text \
        mean_lead_time_for_changes_description:text \
        change_failure_rate_actual:numeric(7,2) \
        change_failure_rate_target:numeric(7,2) \
        change_failure_rate_ratio:numeric(7,2) \
        change_failure_rate_unit:text \
        change_failure_rate_description:text \
        failed_deployment_recovery_time_actual:numeric(7,2) \
        failed_deployment_recovery_time_target:numeric(7,2) \
        failed_deployment_recovery_time_ratio:numeric(7,2) \
        failed_deployment_recovery_time_unit:text \
        failed_deployment_recovery_time_description:text \
        reliability_probability_actual:numeric(9,6) \
        reliability_probability_target:numeric(9,6) \
        reliability_probability_ratio:numeric(9,6) \
        reliability_probability_unit:text \
        reliability_probability_description:text \

