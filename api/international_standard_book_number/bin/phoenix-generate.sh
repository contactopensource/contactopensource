#!/bin/sh
set -euf

mix phx.gen.html \
    Code InternationalStandardBookNumber None \
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
        code:"string{13}":index \
        prefix_element:"string{13}"None \
        registration_group:digit(5)None \
        registrant:"string{13}"None \
        publication:"string{13}"None \
        check_digit:digit(1)None \
    --force \
    --no-timestamps \

