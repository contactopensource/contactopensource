#!/bin/sh
set -euf

mix phx.gen.html \
    Code InternationalStandardBookNumber None \
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
        code:"string{13}":index \
        prefix_element:"string{13}"None \
        registration_group:digit(5)None \
        registrant:"string{13}"None \
        publication:"string{13}"None \
        check_digit:digit(1)None \
    --force \
    --no-timestamps \

