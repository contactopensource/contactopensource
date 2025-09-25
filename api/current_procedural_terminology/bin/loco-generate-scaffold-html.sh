#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    medical_current_procedural_terminology_code_2025 \
        id:uuid \
        sign:string \
        lock_version:integer \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        deleted_at:timestamp \
        deleted_by:url \
        locale_id:references \
        title:string \
        subtitle:string \
        summary:string \
        description:text \
        disambiguation:text \
        avatar_image_400x400_url:url \
        avatar_image_400x400_alt:url \
        main_image_1080x1080_url:url \
        main_image_1080x1080_alt:text \
        main_image_1920x1080_url:url \
        main_image_1920x1080_alt:text \
        main_image_1080x1920_url:url \
        main_image_1080x1920_alt:text \
        emoji:text \
        star_count:integer \
        quick_response_code_id:references \
        universal_product_code_id:references \
        code:string \

