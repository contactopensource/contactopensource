#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    person \
        id:bigint NOT NULL \
        zid:uuid NOT NULL \
        lock_version:int NOT NULL \
        created_at:timestamp NOT NULL \
        created_by:url NOT NULL \
        updated_at:timestamp NOT NULL \
        updated_by:url NOT NULL \
        retired_at:timestamp NOT NULL \
        retired_by:url NOT NULL \
        locale_id:references NOT NULL \
        title:"string{50}" NOT NULL \
        subtitle:"string{50}" NOT NULL \
        summary:string NOT NULL \
        description:text NOT NULL \
        disambiguation:text NOT NULL \
        image_1024x1024_url:url NOT NULL \
        image_1024x1024_alt:text NOT NULL \
        emoji:text NOT NULL \
        star_count:integer NOT NULL \
        given_name:text NOT NULL \
        given_name_phonetic:text NOT NULL \
        middle_name:text NOT NULL \
        middle_name_phonetic:text NOT NULL \
        family_name:text NOT NULL \
        family_name_phonetic:text NOT NULL \
        legal_name:text NOT NULL \
        legal_name_phonetic:text NOT NULL \
        nickname:text NOT NULL \
        nickname_phonetic:text NOT NULL \
        prefix_name:text NOT NULL \
        prefix_name_phonetic:text NOT NULL \
        suffix_name:text NOT NULL \
        suffix_name_phonetic:text NOT NULL \
        salutation_name:text NOT NULL \
        salutation_name_phonetic:text NOT NULL \
        addressee_name:text NOT NULL \
        addressee_name_phonetic:text NOT NULL \
        subject_pronoun:text NOT NULL \
        object_pronoun:text NOT NULL \
        dependent_possessive_pronoun:text NOT NULL \
        independent_possessive_pronoun:text NOT NULL \
        reflexive_pronoun:text NOT NULL \
        intensive_pronoun:text NOT NULL \
        disjunctive_pronoun:text NOT NULL \
        birth_date:date NOT NULL \
        birth_date_year:integer NOT NULL \
        death_date:date NOT NULL \
        death_date_year:integer NOT NULL \

