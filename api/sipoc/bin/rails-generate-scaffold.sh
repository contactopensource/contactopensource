#!/bin/sh
set -euf

rails generate scaffold \
    sipoc \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        suppliers_as_url:text \
        suppliers_as_markdown:markdown \
        inputs_as_url:text \
        inputs_as_markdown:markdown \
        processes_as_url:text \
        processes_as_markdown:markdown \
        outputs_as_url:text \
        outputs_as_markdown:markdown \
        customers_as_url:text \
        customers_as_markdown:markdown \
    --force \
    --no-timestamps \

