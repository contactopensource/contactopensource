#!/bin/sh
set -euf

mix phx.gen.html \
    None Sipoc None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:url:index \
        locale_code:string:index \
        tagging:string:index \
        suppliers_as_url:urlNone \
        suppliers_as_markdown:markdownNone \
        inputs_as_url:urlNone \
        inputs_as_markdown:markdownNone \
        processes_as_url:urlNone \
        processes_as_markdown:markdownNone \
        outputs_as_url:urlNone \
        outputs_as_markdown:markdownNone \
        customers_as_url:urlNone \
        customers_as_markdown:markdownNone \
    --force \
    --no-timestamps \

