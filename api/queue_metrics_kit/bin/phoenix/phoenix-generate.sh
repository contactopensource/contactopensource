#!/bin/sh
set -euf

mix phx.gen.html \
    None QueueMetricKit None \
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
        type:textNone \
        queue_arrival_rate_actual:numeric(7,2)None \
        queue_arrival_rate_target:numeric(7,2)None \
        queue_arrival_rate_ratio:numeric(7,2)None \
        queue_service_rate_actual:numeric(7,2)None \
        queue_service_rate_target:numeric(7,2)None \
        queue_service_rate_ratio:numeric(7,2)None \
        queue_dropout_rate_actual:numeric(7,2)None \
        queue_dropout_rate_target:numeric(7,2)None \
        queue_dropout_rate_ratio:numeric(7,2)None \
        queue_utilization_ratio_actual:numeric(7,2)None \
        queue_utilization_ratio_actual:numeric(7,2)None \
        queue_utilization_ratio_ratio:numeric(7,2)None \
        queue_error_ratio_actual:numeric(7,2)None \
        queue_error_ratio_target:numeric(7,2)None \
        queue_error_ratio_ratio:numeric(7,2)None \
        queue_lead_time_actual:numeric(7,2)None \
        queue_lead_time_target:numeric(7,2)None \
        queue_lead_time_ratio:numeric(7,2)None \
        queue_wait_time_actual:numeric(7,2)None \
        queue_wait_time_target:numeric(7,2)None \
        queue_wait_time_ratio:numeric(7,2)None \
        queue_work_time_actual:numeric(7,2)None \
        queue_work_time_target:numeric(7,2)None \
        queue_work_time_ratio:numeric(7,2)None \
        queue_step_time_actual:numeric(7,2)None \
        queue_step_time_target:numeric(7,2)None \
        queue_step_time_ratio:numeric(7,2)None \
        queue_item_count:countNone \
        queue_service_error_count:countNone \
        queue_arrival_process_probability_distribution_count:textNone \
        queue_service_process_probability_distribution_count:textNone \
        queue_server_count:countNone \
        queue_maximum_active_items_count:countNone \
        queue_maximum_total_items_count:countNone \
    --force \
    --no-timestamps \

