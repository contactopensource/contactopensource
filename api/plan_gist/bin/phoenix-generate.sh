#!/bin/sh
set -euf

mix phx.gen.html \
    Plan PlanGIST None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestampNone \
        created_by:urlNone \
        updated_at:timestampNone \
        updated_by:urlNone \
        retired_at:timestampNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        title:"string{50}":index \
        subtitle:"string{50}":index \
        summary:stringNone \
        description:textNone \
        disambiguation:textNone \
        image_1080x1080_url:urlNone \
        image_1080x1080_alt:textNone \
        emoji:textNone \
        star_count:integerNone \
        plan_id:plan.idNone \
        goal_card_id:card.idNone \
        idea_card_id:card.idNone \
        step_card_id:card.idNone \
        task_card_id:card.idNone \
    --force \
    --no-timestamps \

