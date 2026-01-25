#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    paddiem_instructional_design_model \
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
        phase_1_analysis_as_markdown:markdown \
        phase_2_design_as_markdown:markdown \
        phase_3_development_as_markdown:markdown \
        phase_4_implementation_as_markdown:markdown \
        phase_5_evaluation_as_markdown:markdown \

