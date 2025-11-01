#!/bin/sh
set -euf

rails generate scaffold \
    code_metrics_kit \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        maintainability_index_actual:numeric(7,2) \
        maintainability_index_target:numeric(7,2) \
        maintainability_index_ratio:numeric(7,2) \
        maintainability_index_unit:string \
        maintainability_index_description:string \
        line_count_actual:numeric(7,2) \
        line_count_target:numeric(7,2) \
        line_count_ratio:numeric(7,2) \
        line_count_unit:string \
        line_count_description:string \
        test_automation_code_coverage_actual:numeric(7,2) \
        test_automation_code_coverage_target:numeric(7,2) \
        test_automation_code_coverage_ratio:numeric(7,2) \
        test_automation_code_coverage_unit:string \
        test_automation_code_coverage_description:string \
    --force \
    --no-timestamps \

