#!/bin/sh
set -euf

mix phx.gen.html \
    Codes UnitedKingdomCivilServiceGrade None \
        step:integer:index \
        label:string:index \
        abbreviation:string:index \
        minimum_salary:integerNone \
        definition:stringNone \
    --force \
    --no-timestamps \

