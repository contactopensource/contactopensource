#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    person \
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
        image_1024x1024_url:url \
        image_1024x1024_alt:text \
        emoji:text \
        star_count:integer \
        given_name:text \
        given_name_phonetic:text \
        middle_name:text \
        middle_name_phonetic:text \
        family_name:text \
        family_name_phonetic:text \
        legal_name:text \
        legal_name_phonetic:text \
        nickname:text \
        nickname_phonetic:text \
        prefix_name:text \
        prefix_name_phonetic:text \
        suffix_name:text \
        suffix_name_phonetic:text \
        salutation_name:text \
        salutation_name_phonetic:text \
        addressee_name:text \
        addressee_name_phonetic:text \
        subject_pronoun:text \
        object_pronoun:text \
        dependent_possessive_pronoun:text \
        independent_possessive_pronoun:text \
        reflexive_pronoun:text \
        intensive_pronoun:text \
        disjunctive_pronoun:text \
        birth_date:date \
        birth_date_year:integer \
        death_date:date \
        death_date_year:integer \

