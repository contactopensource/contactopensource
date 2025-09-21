#!/bin/sh
set -euf

rails generate scaffold \
    plan_rice \
        sign:char:index \
        lock_version:integer \
        created_at:timestamp:index \
        created_by:text:index \
        updated_at:timestamp:index \
        updated_by:text:index \
        deleted_at:timestamp:index \
        deleted_by:text:index \
        locale_id:references:index \
        title:string:index \
        subtitle:string:index \
        summary:string \
        description:text \
        disambiguation:text \
        avatar_image_400x400_url:text \
        avatar_image_400x400_alt:text \
        main_image_1080x1080_url:text \
        main_image_1080x1080_alt:text \
        main_image_1920x1080_url:text \
        main_image_1920x1080_alt:text \
        main_image_1080x1920_url:text \
        main_image_1080x1920_alt:text \
        emoji:text \
        star_count:integer \
        quick_response_code_id:references \
        universal_product_code_id:references \
        plan_id:references \
        score:number \
        reach_card_id:references \
        reach_value:number \
        impact_card_id:references \
        impact_value:number \
        confidence_card_id:references \
        confidence_value:number \
        effort_card_id:references \
        effort_value:number \
    --force \
    --no-timestamps \

