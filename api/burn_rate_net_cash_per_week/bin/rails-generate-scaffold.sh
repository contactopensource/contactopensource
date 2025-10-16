#!/bin/sh
set -euf

rails generate scaffold \
    burn_rate_net_cash_per_week \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        actual:numeric(7,2) \
        target:numeric(7,2) \
        ratio:numeric(7,2) \
        unit:string \
        description:string \
    --force \
    --no-timestamps \

