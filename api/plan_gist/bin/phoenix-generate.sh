#!/bin/sh
set -euf

mix phx.gen.html \
    Plan PlanGIST None \
        id:uuid:index \
        sign:char:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:url:index \
        locale_code:string:index \
        sign:"string{1}":index \
        kind:string:index \
        title:"string{50}":index \
        subtitle:"string{50}":index \
        summary:"string{72}"None \
        description:textNone \
        disambiguation:textNone \
        avatar_image_400x400_url:urlNone \
        avatar_image_400x400_alt:urlNone \
        main_image_1080x1080_url:urlNone \
        main_image_1080x1080_alt:textNone \
        main_image_1920x1080_url:urlNone \
        main_image_1920x1080_alt:textNone \
        main_image_1080x1920_url:urlNone \
        main_image_1080x1920_alt:textNone \
        emoji:textNone \
        star_count:integerNone \
        quick_response_code_id:quick_response_code.idNone \
        universal_product_code_id:universal_product_code.idNone \
        plan_id:plan.idNone \
        goal_card_id:card.idNone \
        idea_card_id:card.idNone \
        step_card_id:card.idNone \
        task_card_id:card.idNone \
    --force \
    --no-timestamps \

