#!/bin/sh
set -euf

rails generate scaffold \
    halstead_complexity \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        volume_actual:numeric(7,2) \
        volume_target:numeric(7,2) \
        volume_ratio:numeric(7,2) \
        volume_unit:text \
        volume_description:text \
        difficulty_actual:numeric(7,2) \
        difficulty_target:numeric(7,2) \
        difficulty_ratio:numeric(7,2) \
        difficulty_unit:text \
        difficulty_description:text \
        effort_actual:numeric(7,2) \
        effort_target:numeric(7,2) \
        effort_ratio:numeric(7,2) \
        effort_unit:numeric(7,2) \
        effort_description:numeric(7,2) \
    --force \
    --no-timestamps \

