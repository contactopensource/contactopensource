#!/bin/sh
set -euf

mix phx.gen.html \
    Codes UnitedKingdomCivilServiceRatingScale None \
        rating:integer:index \
        label:string:index \
        definition:stringNone \
    --force \
    --no-timestamps \

