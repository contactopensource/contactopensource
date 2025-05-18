#!/bin/sh
set -euf

mix phx.gen.html \
    Basics Person None \
        id:uuid:index \
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
        given_name:textNone \
        given_name_phonetic:textNone \
        middle_name:textNone \
        middle_name_phonetic:textNone \
        family_name:textNone \
        family_name_phonetic:textNone \
        legal_name:textNone \
        legal_name_phonetic:textNone \
        nickname:textNone \
        nickname_phonetic:textNone \
        prefix_name:textNone \
        prefix_name_phonetic:textNone \
        suffix_name:textNone \
        suffix_name_phonetic:textNone \
        salutation_name:textNone \
        salutation_name_phonetic:textNone \
        addressee_name:textNone \
        addressee_name_phonetic:textNone \
        subject_pronoun:textNone \
        object_pronoun:textNone \
        dependent_possessive_pronoun:textNone \
        independent_possessive_pronoun:textNone \
        reflexive_pronoun:textNone \
        intensive_pronoun:textNone \
        disjunctive_pronoun:textNone \
        birth_date:date:index \
        birth_date_year:integer:index \
        death_date:date:index \
        death_date_year:integer:index \
    --force \
    --no-timestamps \

