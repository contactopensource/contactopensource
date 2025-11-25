#!/bin/sh
set -euf

mix phx.gen.html \
    Codes UnitedKingdomStandardOccupationalClassification2020 None \
        code:string:index \
        title:string:index \
        definition:stringNone \
    --force \
    --no-timestamps \

