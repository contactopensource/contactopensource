#!/bin/sh
set -euf

rails generate scaffold \
    net_promoter_score_customer_perspective \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        actual:numeric(7,2) \
        expect:numeric(7,2) \
        ratio:numeric(7,2) \
        unit:text \
        description_as_markdown:text \
    --force \
    --no-timestamps \

