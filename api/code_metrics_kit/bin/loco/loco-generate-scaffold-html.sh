#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    code_metrics_kit \
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

