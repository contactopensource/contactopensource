#!/bin/sh
set -euf

mix phx.gen.html \
    None CurriculumModel None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:url:index \
        locale_code:string:index \
        tagging:string:index \
        name:"string{50}":index \
        subname:"string{50}":index \
        slug:"string{72}":index \
        summary:"string{72}"None \
        description:textNone \
        disambiguation:textNone \
        sign:text(1):index \
        kind:string:index \
        star_count:integerNone \
        quick_response_code_id:referencesNone \
        universal_product_code_id:referencesNone \
        year:yearNone \
        philosophy_sentence:textNone \
        best_use_case_summary:textNone \
        focus_summary:textNone \
        approach_summary:textNone \
        direction_summary:textNone \
        teacher_role_summary:textNone \
        structure_description_as_markdown:markdownNone \
        strengths_description_as_markdown:markdownNone \
        limitations_description_as_markdown:markdownNone \
    --force \
    --no-timestamps \

