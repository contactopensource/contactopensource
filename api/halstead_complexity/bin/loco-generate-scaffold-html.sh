#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    halstead_complexity \
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

