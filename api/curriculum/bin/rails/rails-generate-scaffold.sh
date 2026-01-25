#!/bin/sh
set -euf

rails generate scaffold \
    curriculum \
        lock_version:integer \
        created_at:timestamp_utc_usec:index \
        created_by:text:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:text:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:text:index \
        locale_code:string:index \
        tagging:string:index \
        name:"string{50}":index \
        subname:"string{50}":index \
        slug:"string{72}":index \
        summary:"string{72}" \
        description:text \
        disambiguation:text \
        sign:text(1):index \
        kind:string:index \
        star_count:integer \
        quick_response_code_id:references \
        universal_product_code_id:references \
        purpose_description_as_markdown:markdown \
        process_description_as_markdown:markdown \
        evaluation_description_as_markdown:markdown \
        continuation_description_as_markdown:markdown \
    --force \
    --no-timestamps \

