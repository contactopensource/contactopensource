#!/bin/sh
set -euf

mix phx.gen.html \
    None PhoneContact None \
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
        label:textNone \
        number_text:text:index \
        e164_text:"string{15}":index \
        e164_country_code:"string{3}":index \
        e164_national_destination_code:"string{13}":index \
        e164_group_identification_code:"string{4}"None \
        e164_trial_identification_code:"string{3}"None \
        e164_subscriber_number:"string{14}"None \
    --force \
    --no-timestamps \

