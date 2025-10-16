#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    sipoc \
        id:uuid \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        deleted_at:timestamp_utc_usec \
        deleted_by:url \
        locale_code:string \
        tagging:string \
        suppliers_as_url:url \
        suppliers_as_markdown:markdown \
        inputs_as_url:url \
        inputs_as_markdown:markdown \
        processes_as_url:url \
        processes_as_markdown:markdown \
        outputs_as_url:url \
        outputs_as_markdown:markdown \
        customers_as_url:url \
        customers_as_markdown:markdown \

