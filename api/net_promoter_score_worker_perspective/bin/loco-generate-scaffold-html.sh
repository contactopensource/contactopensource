#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    net_promoter_score_worker_perspective \
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
        actual:numeric(7,2) \
        expect:numeric(7,2) \
        ratio:numeric(7,2) \
        unit:text \
        description_as_markdown:text \

