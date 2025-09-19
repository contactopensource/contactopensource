#!/bin/sh
set -euf

rails generate scaffold \
    plan_okr \
        lock_version:integer \
        created_at:timestamp \
        created_by:text \
        updated_at:timestamp \
        updated_by:text \
        retired_at:timestamp \
        retired_by:text \
        locale_id:references \
        title:"string{50}":index \
        subtitle:"string{50}":index \
        summary:string \
        description:text \
        disambiguation:text \
        image_1080x1080_url:text \
        image_1080x1080_alt:text \
        emoji:text \
        star_count:integer \
        plan_id:references \
        objective_card_id:references \
        key_result_card_ids:card.id[] \
    --force \
    --no-timestamps \

