#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    plan_rope \
        id:uuid \
        lock_version:integer \
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
        image_1080x1080_url:url \
        image_1080x1080_alt:text \
        emoji:text \
        star_count:integer \
        plan_id:references \
        measurement_unit_id:references \
        realistic:card.id \
        optimistic:card.id \
        pessimistic:card.id \
        equilibristic:card.id \

