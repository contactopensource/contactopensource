#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    curriculum_model \
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
        name:"string{50}" \
        subname:"string{50}" \
        slug:"string{72}" \
        summary:"string{72}" \
        description:text \
        disambiguation:text \
        sign:text(1) \
        kind:string \
        star_count:integer \
        quick_response_code_id:references \
        universal_product_code_id:references \
        structure_description_as_markdown:markdown \
        philosphy_description_as_markdown:markdown \
        strengths_description_as_markdown:markdown \
        limitations_description_as_markdown:markdown \

