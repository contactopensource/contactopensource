#!/bin/sh
set -euf

mix phx.gen.html \
    plan DoubleDiamond None \
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
        phase_1_title:textNone \
        phase_1_smart:smartNone \
        phase_1_resolve_wall_time:durationNone \
        phase_1_resolve_work_time:durationNone \
        phase_1_reliability_unit_interval:numeric(6,6)None \
        phase_2_title:textNone \
        phase_2_smart:smartNone \
        phase_2_wall_time:durationNone \
        phase_2_work_time:durationNone \
        phase_2_total_count:countNone \
        phase_2_error_count:countNone \
        phase_2_resolve_wall_time:durationNone \
        phase_2_resolve_work_time:durationNone \
        phase_2_reliability_unit_interval:numeric(6,6)None \
        phase_3_title:textNone \
        phase_3_smart:smartNone \
        phase_3_wall_time:durationNone \
        phase_3_work_time:durationNone \
        phase_3_total_count:countNone \
        phase_3_error_count:countNone \
        phase_3_resolve_wall_time:durationNone \
        phase_3_resolve_work_time:durationNone \
        phase_3_reliability_unit_interval:numeric(6,6)None \
        phase_4_title:textNone \
        phase_4_smart:smartNone \
        phase_4_wall_time:durationNone \
        phase_4_work_time:durationNone \
        phase_4_total_count:countNone \
        phase_4_error_count:countNone \
        phase_4_resolve_wall_time:durationNone \
        phase_4_resolve_work_time:durationNone \
        phase_4_reliability_unit_interval:numeric(6,6)None \
    --force \
    --no-timestamps \

