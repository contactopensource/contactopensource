#!/bin/sh
set -euf

cargo loco generate scaffold \
    smart_goal \
        id:bigint:index \
        zid:uuid:index \
        lock_version:intNone \
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
        image_1024x1024_url:urlNone \
        image_1024x1024_alt:textNone \
        emoji:textNone \
        star_count:integerNone \
        specific_card_id:card.idNone \
        measurable_card_id:card.idNone \
        achievable_card_id:card.idNone \
        relevant_card_id:card.idNone \
        timely_card_id:card.idNone \
    --force \
    --no-timestamps \

