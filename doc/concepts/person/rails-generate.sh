#!/bin/sh
set -euf

rails generate scaffold \
person_locale \
	"$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    born_date:date \
    born_year:integer \
    died_date:date \
    died_year:integer \
   
rails generate scaffold \
person_locale \
	"$RAILS_GENERATE_SCAFFOLD_FIELDS" \
	person:references \
	locale:references \
    given_name:string \
    given_name_phonetic:string \
    middle_name:string \
    middle_name_phonetic:string \
    family_name:string \
    family_name_phonetic:string \
    legal_name:string \
    legal_name_phonetic:string \
    nickname:string \
    nickname_phonetic:string \
    prefix_name:string \
    prefix_name_phonetic:string \
    suffix_name:string \
    suffix_name_phonetic:string \
    salutation_name:string \
    salutation_name_phonetic:string \
    addressee_name:string \
    addressee_name_phonetic:string \
    nicknames:string[] \
    subject_pronoun:string \
    object_pronoun:string \
    dependent_possessive_pronoun:string \
    independent_possessive_pronoun:string \
    reflexive_pronoun:string \
    intensive_pronoun:string \
    disjunctive_pronoun:string \
