#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    plan_rice \
        id:uuid \
        lock_version:int \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        retired_at:timestamp \
        retired_by:url \
        locale_id:references \
        title:"string{50}" \
        subtitle:"string{50}" \
        summary:string \
        description:text \
        disambiguation:text \
        image_1024x1024_url:url \
        image_1024x1024_alt:text \
        emoji:text \
        star_count:integer \
        plan_id:references \
        score:number \
        reach_card_id:references:card \
        reach_value:number \
        impact_card_id:references:card \
        impact_value:number \
        confidence_card_id:references:card \
        confidence_value:number \
        effort_card_id:references:card \
        effort_value:number \

