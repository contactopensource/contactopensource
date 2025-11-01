#!/bin/sh
set -euf

mix phx.gen.html \
    None CodeMetricsKit None \
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
        maintainability_index_actual:numeric(7,2)None \
        maintainability_index_target:numeric(7,2)None \
        maintainability_index_ratio:numeric(7,2)None \
        maintainability_index_unit:stringNone \
        maintainability_index_description:stringNone \
        line_count_actual:numeric(7,2)None \
        line_count_target:numeric(7,2)None \
        line_count_ratio:numeric(7,2)None \
        line_count_unit:stringNone \
        line_count_description:stringNone \
        test_automation_code_coverage_actual:numeric(7,2)None \
        test_automation_code_coverage_target:numeric(7,2)None \
        test_automation_code_coverage_ratio:numeric(7,2)None \
        test_automation_code_coverage_unit:stringNone \
        test_automation_code_coverage_description:stringNone \
    --force \
    --no-timestamps \

